// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'learning_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LearningEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllLearnings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllLearnings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllLearnings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllLearnings value) getAllLearnings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllLearnings value)? getAllLearnings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllLearnings value)? getAllLearnings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningEventCopyWith<$Res> {
  factory $LearningEventCopyWith(
          LearningEvent value, $Res Function(LearningEvent) then) =
      _$LearningEventCopyWithImpl<$Res, LearningEvent>;
}

/// @nodoc
class _$LearningEventCopyWithImpl<$Res, $Val extends LearningEvent>
    implements $LearningEventCopyWith<$Res> {
  _$LearningEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllLearningsImplCopyWith<$Res> {
  factory _$$GetAllLearningsImplCopyWith(_$GetAllLearningsImpl value,
          $Res Function(_$GetAllLearningsImpl) then) =
      __$$GetAllLearningsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllLearningsImplCopyWithImpl<$Res>
    extends _$LearningEventCopyWithImpl<$Res, _$GetAllLearningsImpl>
    implements _$$GetAllLearningsImplCopyWith<$Res> {
  __$$GetAllLearningsImplCopyWithImpl(
      _$GetAllLearningsImpl _value, $Res Function(_$GetAllLearningsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllLearningsImpl implements _GetAllLearnings {
  const _$GetAllLearningsImpl();

  @override
  String toString() {
    return 'LearningEvent.getAllLearnings()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllLearningsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllLearnings,
  }) {
    return getAllLearnings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllLearnings,
  }) {
    return getAllLearnings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllLearnings,
    required TResult orElse(),
  }) {
    if (getAllLearnings != null) {
      return getAllLearnings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllLearnings value) getAllLearnings,
  }) {
    return getAllLearnings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllLearnings value)? getAllLearnings,
  }) {
    return getAllLearnings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllLearnings value)? getAllLearnings,
    required TResult orElse(),
  }) {
    if (getAllLearnings != null) {
      return getAllLearnings(this);
    }
    return orElse();
  }
}

abstract class _GetAllLearnings implements LearningEvent {
  const factory _GetAllLearnings() = _$GetAllLearningsImpl;
}

/// @nodoc
mixin _$LearningState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<List<HomeScreenData>> get learnings =>
      throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<List<HomeScreenData>>>>
      get learingSuccessOrFalse => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LearningStateCopyWith<LearningState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningStateCopyWith<$Res> {
  factory $LearningStateCopyWith(
          LearningState value, $Res Function(LearningState) then) =
      _$LearningStateCopyWithImpl<$Res, LearningState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<List<HomeScreenData>> learnings,
      Option<Either<MainFailure, List<List<HomeScreenData>>>>
          learingSuccessOrFalse});
}

/// @nodoc
class _$LearningStateCopyWithImpl<$Res, $Val extends LearningState>
    implements $LearningStateCopyWith<$Res> {
  _$LearningStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? learnings = null,
    Object? learingSuccessOrFalse = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      learnings: null == learnings
          ? _value.learnings
          : learnings // ignore: cast_nullable_to_non_nullable
              as List<List<HomeScreenData>>,
      learingSuccessOrFalse: null == learingSuccessOrFalse
          ? _value.learingSuccessOrFalse
          : learingSuccessOrFalse // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<List<HomeScreenData>>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LearningStateImplCopyWith<$Res>
    implements $LearningStateCopyWith<$Res> {
  factory _$$LearningStateImplCopyWith(
          _$LearningStateImpl value, $Res Function(_$LearningStateImpl) then) =
      __$$LearningStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<List<HomeScreenData>> learnings,
      Option<Either<MainFailure, List<List<HomeScreenData>>>>
          learingSuccessOrFalse});
}

/// @nodoc
class __$$LearningStateImplCopyWithImpl<$Res>
    extends _$LearningStateCopyWithImpl<$Res, _$LearningStateImpl>
    implements _$$LearningStateImplCopyWith<$Res> {
  __$$LearningStateImplCopyWithImpl(
      _$LearningStateImpl _value, $Res Function(_$LearningStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? learnings = null,
    Object? learingSuccessOrFalse = null,
  }) {
    return _then(_$LearningStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      learnings: null == learnings
          ? _value._learnings
          : learnings // ignore: cast_nullable_to_non_nullable
              as List<List<HomeScreenData>>,
      learingSuccessOrFalse: null == learingSuccessOrFalse
          ? _value.learingSuccessOrFalse
          : learingSuccessOrFalse // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<List<HomeScreenData>>>>,
    ));
  }
}

/// @nodoc

class _$LearningStateImpl implements _LearningState {
  const _$LearningStateImpl(
      {required this.isLoading,
      required final List<List<HomeScreenData>> learnings,
      required this.learingSuccessOrFalse})
      : _learnings = learnings;

  @override
  final bool isLoading;
  final List<List<HomeScreenData>> _learnings;
  @override
  List<List<HomeScreenData>> get learnings {
    if (_learnings is EqualUnmodifiableListView) return _learnings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_learnings);
  }

  @override
  final Option<Either<MainFailure, List<List<HomeScreenData>>>>
      learingSuccessOrFalse;

  @override
  String toString() {
    return 'LearningState(isLoading: $isLoading, learnings: $learnings, learingSuccessOrFalse: $learingSuccessOrFalse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearningStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._learnings, _learnings) &&
            (identical(other.learingSuccessOrFalse, learingSuccessOrFalse) ||
                other.learingSuccessOrFalse == learingSuccessOrFalse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_learnings), learingSuccessOrFalse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LearningStateImplCopyWith<_$LearningStateImpl> get copyWith =>
      __$$LearningStateImplCopyWithImpl<_$LearningStateImpl>(this, _$identity);
}

abstract class _LearningState implements LearningState {
  const factory _LearningState(
      {required final bool isLoading,
      required final List<List<HomeScreenData>> learnings,
      required final Option<Either<MainFailure, List<List<HomeScreenData>>>>
          learingSuccessOrFalse}) = _$LearningStateImpl;

  @override
  bool get isLoading;
  @override
  List<List<HomeScreenData>> get learnings;
  @override
  Option<Either<MainFailure, List<List<HomeScreenData>>>>
      get learingSuccessOrFalse;
  @override
  @JsonKey(ignore: true)
  _$$LearningStateImplCopyWith<_$LearningStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
