import 'package:lateral_thinking/domain/model/puzzle.dart';
import 'package:lateral_thinking/infrastructure/repositoryimpl/proto/app/v1/puzzle.pb.dart' as proto;

extension PuzzleProto on proto.Puzzle {
  Puzzle toModel() {
    return Puzzle(
      id: id,
      question: question,
      answer: answer,
    );
  }
}