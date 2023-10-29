
import 'package:freezed_annotation/freezed_annotation.dart';

part 'puzzle.freezed.dart';

@freezed
class Puzzle with _$Puzzle {
  const factory Puzzle({
    required String id,
    required String question,
    required String answer,
  }) = _Puzzle;
}