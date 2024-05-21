// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loading_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoadingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setLoading,
    required TResult Function() setNotLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? setLoading,
    TResult? Function()? setNotLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setLoading,
    TResult Function()? setNotLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetLoading value) setLoading,
    required TResult Function(_SetNotLoading value) setNotLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetLoading value)? setLoading,
    TResult? Function(_SetNotLoading value)? setNotLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetLoading value)? setLoading,
    TResult Function(_SetNotLoading value)? setNotLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingEventCopyWith<$Res> {
  factory $LoadingEventCopyWith(
          LoadingEvent value, $Res Function(LoadingEvent) then) =
      _$LoadingEventCopyWithImpl<$Res, LoadingEvent>;
}

/// @nodoc
class _$LoadingEventCopyWithImpl<$Res, $Val extends LoadingEvent>
    implements $LoadingEventCopyWith<$Res> {
  _$LoadingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SetLoadingImplCopyWith<$Res> {
  factory _$$SetLoadingImplCopyWith(
          _$SetLoadingImpl value, $Res Function(_$SetLoadingImpl) then) =
      __$$SetLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SetLoadingImplCopyWithImpl<$Res>
    extends _$LoadingEventCopyWithImpl<$Res, _$SetLoadingImpl>
    implements _$$SetLoadingImplCopyWith<$Res> {
  __$$SetLoadingImplCopyWithImpl(
      _$SetLoadingImpl _value, $Res Function(_$SetLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SetLoadingImpl implements _SetLoading {
  const _$SetLoadingImpl();

  @override
  String toString() {
    return 'LoadingEvent.setLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SetLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setLoading,
    required TResult Function() setNotLoading,
  }) {
    return setLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? setLoading,
    TResult? Function()? setNotLoading,
  }) {
    return setLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setLoading,
    TResult Function()? setNotLoading,
    required TResult orElse(),
  }) {
    if (setLoading != null) {
      return setLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetLoading value) setLoading,
    required TResult Function(_SetNotLoading value) setNotLoading,
  }) {
    return setLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetLoading value)? setLoading,
    TResult? Function(_SetNotLoading value)? setNotLoading,
  }) {
    return setLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetLoading value)? setLoading,
    TResult Function(_SetNotLoading value)? setNotLoading,
    required TResult orElse(),
  }) {
    if (setLoading != null) {
      return setLoading(this);
    }
    return orElse();
  }
}

abstract class _SetLoading implements LoadingEvent {
  const factory _SetLoading() = _$SetLoadingImpl;
}

/// @nodoc
abstract class _$$SetNotLoadingImplCopyWith<$Res> {
  factory _$$SetNotLoadingImplCopyWith(
          _$SetNotLoadingImpl value, $Res Function(_$SetNotLoadingImpl) then) =
      __$$SetNotLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SetNotLoadingImplCopyWithImpl<$Res>
    extends _$LoadingEventCopyWithImpl<$Res, _$SetNotLoadingImpl>
    implements _$$SetNotLoadingImplCopyWith<$Res> {
  __$$SetNotLoadingImplCopyWithImpl(
      _$SetNotLoadingImpl _value, $Res Function(_$SetNotLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SetNotLoadingImpl implements _SetNotLoading {
  const _$SetNotLoadingImpl();

  @override
  String toString() {
    return 'LoadingEvent.setNotLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SetNotLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setLoading,
    required TResult Function() setNotLoading,
  }) {
    return setNotLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? setLoading,
    TResult? Function()? setNotLoading,
  }) {
    return setNotLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setLoading,
    TResult Function()? setNotLoading,
    required TResult orElse(),
  }) {
    if (setNotLoading != null) {
      return setNotLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetLoading value) setLoading,
    required TResult Function(_SetNotLoading value) setNotLoading,
  }) {
    return setNotLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetLoading value)? setLoading,
    TResult? Function(_SetNotLoading value)? setNotLoading,
  }) {
    return setNotLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetLoading value)? setLoading,
    TResult Function(_SetNotLoading value)? setNotLoading,
    required TResult orElse(),
  }) {
    if (setNotLoading != null) {
      return setNotLoading(this);
    }
    return orElse();
  }
}

abstract class _SetNotLoading implements LoadingEvent {
  const factory _SetNotLoading() = _$SetNotLoadingImpl;
}

/// @nodoc
mixin _$LoadingState {
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoadingStateCopyWith<LoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingStateCopyWith<$Res> {
  factory $LoadingStateCopyWith(
          LoadingState value, $Res Function(LoadingState) then) =
      _$LoadingStateCopyWithImpl<$Res, LoadingState>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class _$LoadingStateCopyWithImpl<$Res, $Val extends LoadingState>
    implements $LoadingStateCopyWith<$Res> {
  _$LoadingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res>
    implements $LoadingStateCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$LoadingStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$LoadingStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadingStateImpl implements _LoadingState {
  const _$LoadingStateImpl({required this.isLoading});

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'LoadingState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingStateImplCopyWith<_$LoadingStateImpl> get copyWith =>
      __$$LoadingStateImplCopyWithImpl<_$LoadingStateImpl>(this, _$identity);
}

abstract class _LoadingState implements LoadingState {
  const factory _LoadingState({required final bool isLoading}) =
      _$LoadingStateImpl;

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$LoadingStateImplCopyWith<_$LoadingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
