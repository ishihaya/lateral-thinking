
import 'package:lateral_thinking/domain/model/puzzle.dart';

abstract class PuzzleRepository {
  Future<List<Puzzle>> listPuzzles();
}