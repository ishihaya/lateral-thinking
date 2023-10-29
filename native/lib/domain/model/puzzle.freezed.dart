// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'puzzle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Puzzle {
  String get question => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PuzzleCopyWith<Puzzle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PuzzleCopyWith<$Res> {
  factory $PuzzleCopyWith(Puzzle value, $Res Function(Puzzle) then) =
      _$PuzzleCopyWithImpl<$Res, Puzzle>;
  @useResult
  $Res call({String question, String answer});
}

/// @nodoc
class _$PuzzleCopyWithImpl<$Res, $Val extends Puzzle>
    implements $PuzzleCopyWith<$Res> {
  _$PuzzleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? answer = null,
  }) {
    return _then(_value.copyWith(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PuzzleImplCopyWith<$Res> implements $PuzzleCopyWith<$Res> {
  factory _$$PuzzleImplCopyWith(
          _$PuzzleImpl value, $Res Function(_$PuzzleImpl) then) =
      __$$PuzzleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String question, String answer});
}

/// @nodoc
class __$$PuzzleImplCopyWithImpl<$Res>
    extends _$PuzzleCopyWithImpl<$Res, _$PuzzleImpl>
    implements _$$PuzzleImplCopyWith<$Res> {
  __$$PuzzleImplCopyWithImpl(
      _$PuzzleImpl _value, $Res Function(_$PuzzleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? answer = null,
  }) {
    return _then(_$PuzzleImpl(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PuzzleImpl implements _Puzzle {
  const _$PuzzleImpl({required this.question, required this.answer});

  @override
  final String question;
  @override
  final String answer;

  @override
  String toString() {
    return 'Puzzle(question: $question, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PuzzleImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, question, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PuzzleImplCopyWith<_$PuzzleImpl> get copyWith =>
      __$$PuzzleImplCopyWithImpl<_$PuzzleImpl>(this, _$identity);
}

abstract class _Puzzle implements Puzzle {
  const factory _Puzzle(
      {required final String question,
      required final String answer}) = _$PuzzleImpl;

  @override
  String get question;
  @override
  String get answer;
  @override
  @JsonKey(ignore: true)
  _$$PuzzleImplCopyWith<_$PuzzleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
