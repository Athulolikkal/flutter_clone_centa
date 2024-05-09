// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAutoScrollDataInformation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAutoScrollDataInformation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAutoScrollDataInformation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAutoScrollDataInformation value)
        getAutoScrollDataInformation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAutoScrollDataInformation value)?
        getAutoScrollDataInformation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAutoScrollDataInformation value)?
        getAutoScrollDataInformation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenEventCopyWith<$Res> {
  factory $HomeScreenEventCopyWith(
          HomeScreenEvent value, $Res Function(HomeScreenEvent) then) =
      _$HomeScreenEventCopyWithImpl<$Res, HomeScreenEvent>;
}

/// @nodoc
class _$HomeScreenEventCopyWithImpl<$Res, $Val extends HomeScreenEvent>
    implements $HomeScreenEventCopyWith<$Res> {
  _$HomeScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAutoScrollDataInformationImplCopyWith<$Res> {
  factory _$$GetAutoScrollDataInformationImplCopyWith(
          _$GetAutoScrollDataInformationImpl value,
          $Res Function(_$GetAutoScrollDataInformationImpl) then) =
      __$$GetAutoScrollDataInformationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAutoScrollDataInformationImplCopyWithImpl<$Res>
    extends _$HomeScreenEventCopyWithImpl<$Res,
        _$GetAutoScrollDataInformationImpl>
    implements _$$GetAutoScrollDataInformationImplCopyWith<$Res> {
  __$$GetAutoScrollDataInformationImplCopyWithImpl(
      _$GetAutoScrollDataInformationImpl _value,
      $Res Function(_$GetAutoScrollDataInformationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAutoScrollDataInformationImpl
    implements _GetAutoScrollDataInformation {
  const _$GetAutoScrollDataInformationImpl();

  @override
  String toString() {
    return 'HomeScreenEvent.getAutoScrollDataInformation()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAutoScrollDataInformationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAutoScrollDataInformation,
  }) {
    return getAutoScrollDataInformation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAutoScrollDataInformation,
  }) {
    return getAutoScrollDataInformation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAutoScrollDataInformation,
    required TResult orElse(),
  }) {
    if (getAutoScrollDataInformation != null) {
      return getAutoScrollDataInformation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAutoScrollDataInformation value)
        getAutoScrollDataInformation,
  }) {
    return getAutoScrollDataInformation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAutoScrollDataInformation value)?
        getAutoScrollDataInformation,
  }) {
    return getAutoScrollDataInformation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAutoScrollDataInformation value)?
        getAutoScrollDataInformation,
    required TResult orElse(),
  }) {
    if (getAutoScrollDataInformation != null) {
      return getAutoScrollDataInformation(this);
    }
    return orElse();
  }
}

abstract class _GetAutoScrollDataInformation implements HomeScreenEvent {
  const factory _GetAutoScrollDataInformation() =
      _$GetAutoScrollDataInformationImpl;
}

/// @nodoc
mixin _$HomeScreenState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<HomeScreenData>? get homeScreenData =>
      throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<HomeScreenData>>>
      get homeScreeenFailureOrSuccessOption =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeScreenStateCopyWith<HomeScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenStateCopyWith<$Res> {
  factory $HomeScreenStateCopyWith(
          HomeScreenState value, $Res Function(HomeScreenState) then) =
      _$HomeScreenStateCopyWithImpl<$Res, HomeScreenState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<HomeScreenData>? homeScreenData,
      Option<Either<MainFailure, List<HomeScreenData>>>
          homeScreeenFailureOrSuccessOption});
}

/// @nodoc
class _$HomeScreenStateCopyWithImpl<$Res, $Val extends HomeScreenState>
    implements $HomeScreenStateCopyWith<$Res> {
  _$HomeScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? homeScreenData = freezed,
    Object? homeScreeenFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      homeScreenData: freezed == homeScreenData
          ? _value.homeScreenData
          : homeScreenData // ignore: cast_nullable_to_non_nullable
              as List<HomeScreenData>?,
      homeScreeenFailureOrSuccessOption: null ==
              homeScreeenFailureOrSuccessOption
          ? _value.homeScreeenFailureOrSuccessOption
          : homeScreeenFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<HomeScreenData>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeScreenStateImplCopyWith<$Res>
    implements $HomeScreenStateCopyWith<$Res> {
  factory _$$HomeScreenStateImplCopyWith(_$HomeScreenStateImpl value,
          $Res Function(_$HomeScreenStateImpl) then) =
      __$$HomeScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<HomeScreenData>? homeScreenData,
      Option<Either<MainFailure, List<HomeScreenData>>>
          homeScreeenFailureOrSuccessOption});
}

/// @nodoc
class __$$HomeScreenStateImplCopyWithImpl<$Res>
    extends _$HomeScreenStateCopyWithImpl<$Res, _$HomeScreenStateImpl>
    implements _$$HomeScreenStateImplCopyWith<$Res> {
  __$$HomeScreenStateImplCopyWithImpl(
      _$HomeScreenStateImpl _value, $Res Function(_$HomeScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? homeScreenData = freezed,
    Object? homeScreeenFailureOrSuccessOption = null,
  }) {
    return _then(_$HomeScreenStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      homeScreenData: freezed == homeScreenData
          ? _value._homeScreenData
          : homeScreenData // ignore: cast_nullable_to_non_nullable
              as List<HomeScreenData>?,
      homeScreeenFailureOrSuccessOption: null ==
              homeScreeenFailureOrSuccessOption
          ? _value.homeScreeenFailureOrSuccessOption
          : homeScreeenFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<HomeScreenData>>>,
    ));
  }
}

/// @nodoc

class _$HomeScreenStateImpl implements _HomeScreenState {
  const _$HomeScreenStateImpl(
      {required this.isLoading,
      final List<HomeScreenData>? homeScreenData,
      required this.homeScreeenFailureOrSuccessOption})
      : _homeScreenData = homeScreenData;

  @override
  final bool isLoading;
  final List<HomeScreenData>? _homeScreenData;
  @override
  List<HomeScreenData>? get homeScreenData {
    final value = _homeScreenData;
    if (value == null) return null;
    if (_homeScreenData is EqualUnmodifiableListView) return _homeScreenData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Option<Either<MainFailure, List<HomeScreenData>>>
      homeScreeenFailureOrSuccessOption;

  @override
  String toString() {
    return 'HomeScreenState(isLoading: $isLoading, homeScreenData: $homeScreenData, homeScreeenFailureOrSuccessOption: $homeScreeenFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeScreenStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._homeScreenData, _homeScreenData) &&
            (identical(other.homeScreeenFailureOrSuccessOption,
                    homeScreeenFailureOrSuccessOption) ||
                other.homeScreeenFailureOrSuccessOption ==
                    homeScreeenFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_homeScreenData),
      homeScreeenFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeScreenStateImplCopyWith<_$HomeScreenStateImpl> get copyWith =>
      __$$HomeScreenStateImplCopyWithImpl<_$HomeScreenStateImpl>(
          this, _$identity);
}

abstract class _HomeScreenState implements HomeScreenState {
  const factory _HomeScreenState(
      {required final bool isLoading,
      final List<HomeScreenData>? homeScreenData,
      required final Option<Either<MainFailure, List<HomeScreenData>>>
          homeScreeenFailureOrSuccessOption}) = _$HomeScreenStateImpl;

  @override
  bool get isLoading;
  @override
  List<HomeScreenData>? get homeScreenData;
  @override
  Option<Either<MainFailure, List<HomeScreenData>>>
      get homeScreeenFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$HomeScreenStateImplCopyWith<_$HomeScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
