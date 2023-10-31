
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lateral_thinking/domain/model/puzzle.dart';
import 'package:lateral_thinking/domain/repository/puzzle.dart';
import 'package:lateral_thinking/infrastructure/grpc/grpc.dart';
import 'package:lateral_thinking/infrastructure/repositoryimpl/proto/app/v1/puzzle.pb.dart' as proto;
import 'package:lateral_thinking/infrastructure/repositoryimpl/proto/app/v1/service.pbgrpc.dart';
import 'package:lateral_thinking/infrastructure/repositoryimpl/protoconv/puzzle.dart';

final puzzleRepositoryProvider = Provider<PuzzleRepository>((ref) {
  return PuzzleRepositoryImpl(
    client: AppServiceClient(ref.watch(grpcClientProvider)),
  );
});

class PuzzleRepositoryImpl implements PuzzleRepository {
  PuzzleRepositoryImpl({
    required this.client,
  }): super();
  final AppServiceClient client;

  @override
  Future<List<Puzzle>> listPuzzles() async {
    try {
      final request = proto.ListPuzzlesRequest(limit: 5);
      final response = await client.listPuzzles(request);
      return response.puzzles.map((e) => e.toModel()).toList();
    } catch (e) {
      throw Exception('Failed to list puzzles: $e');
    }
  }
}
