
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lateral_thinking/domain/model/puzzle.dart';
import 'package:lateral_thinking/domain/repository/puzzle.dart';
import 'package:lateral_thinking/infrastructure/repositoryimpl/puzzle.dart';

final puzzlesProvider = StateNotifierProvider<PuzzlesProvider, List<Puzzle>>((ref) {
  final puzzleRepository = ref.watch(puzzleRepositoryProvider);
  return PuzzlesProvider(puzzleRepository);
});

class PuzzlesProvider extends StateNotifier<List<Puzzle>> {
  PuzzlesProvider(this._puzzleRepository) : super([]);
  final PuzzleRepository _puzzleRepository;
  
  Future<void> listPuzzles() async {
    state = await _puzzleRepository.listPuzzles();
  }
}