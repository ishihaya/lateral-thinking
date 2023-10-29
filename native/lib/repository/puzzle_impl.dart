
import 'package:lateral_thinking/domain/model/puzzle.dart';
import 'package:lateral_thinking/repository/puzzle.dart';

class PuzzleImpl implements PuzzleRepository {
  @override
  Future<List<Puzzle>> listPuzzles() async {
    // TODO gRPCサーバーから取得
    return [];
  }
}
