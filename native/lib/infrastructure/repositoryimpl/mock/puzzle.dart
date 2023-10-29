import 'package:lateral_thinking/domain/model/puzzle.dart';
import 'package:lateral_thinking/domain/repository/puzzle.dart';

class MockPuzzleRepository implements PuzzleRepository {
  @override
  Future<List<Puzzle>> listPuzzles() async {
    return [
      const Puzzle(id: 'test1', question: 'なぜカラスは鳴くのか？', answer: 'カラスは鳴くのではなく、鳴いていると聞こえるのだ'),
      const Puzzle(id: 'test2', question: 'なぜカラスは黒いのか？', answer: 'カラスは黒いのではなく、黒く見えるのだ'),
    ];
  }
}