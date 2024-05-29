// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'searches_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchParams) getAllSearchItems,
    required TResult Function() resetSearchState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchParams)? getAllSearchItems,
    TResult? Function()? resetSearchState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchParams)? getAllSearchItems,
    TResult Function()? resetSearchState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllSearchItems value) getAllSearchItems,
    required TResult Function(_ResetSearchState value) resetSearchState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllSearchItems value)? getAllSearchItems,
    TResult? Function(_ResetSearchState value)? resetSearchState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllSearchItems value)? getAllSearchItems,
    TResult Function(_ResetSearchState value)? resetSearchState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchesEventCopyWith<$Res> {
  factory $SearchesEventCopyWith(
          SearchesEvent value, $Res Function(SearchesEvent) then) =
      _$SearchesEventCopyWithImpl<$Res, SearchesEvent>;
}

/// @nodoc
class _$SearchesEventCopyWithImpl<$Res, $Val extends SearchesEvent>
    implements $SearchesEventCopyWith<$Res> {
  _$SearchesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllSearchItemsImplCopyWith<$Res> {
  factory _$$GetAllSearchItemsImplCopyWith(_$GetAllSearchItemsImpl value,
          $Res Function(_$GetAllSearchItemsImpl) then) =
      __$$GetAllSearchItemsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchParams});
}

/// @nodoc
class __$$GetAllSearchItemsImplCopyWithImpl<$Res>
    extends _$SearchesEventCopyWithImpl<$Res, _$GetAllSearchItemsImpl>
    implements _$$GetAllSearchItemsImplCopyWith<$Res> {
  __$$GetAllSearchItemsImplCopyWithImpl(_$GetAllSearchItemsImpl _value,
      $Res Function(_$GetAllSearchItemsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchParams = null,
  }) {
    return _then(_$GetAllSearchItemsImpl(
      null == searchParams
          ? _value.searchParams
          : searchParams // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAllSearchItemsImpl implements _GetAllSearchItems {
  const _$GetAllSearchItemsImpl(this.searchParams);

  @override
  final String searchParams;

  @override
  String toString() {
    return 'SearchesEvent.getAllSearchItems(searchParams: $searchParams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllSearchItemsImpl &&
            (identical(other.searchParams, searchParams) ||
                other.searchParams == searchParams));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchParams);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllSearchItemsImplCopyWith<_$GetAllSearchItemsImpl> get copyWith =>
      __$$GetAllSearchItemsImplCopyWithImpl<_$GetAllSearchItemsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchParams) getAllSearchItems,
    required TResult Function() resetSearchState,
  }) {
    return getAllSearchItems(searchParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchParams)? getAllSearchItems,
    TResult? Function()? resetSearchState,
  }) {
    return getAllSearchItems?.call(searchParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchParams)? getAllSearchItems,
    TResult Function()? resetSearchState,
    required TResult orElse(),
  }) {
    if (getAllSearchItems != null) {
      return getAllSearchItems(searchParams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllSearchItems value) getAllSearchItems,
    required TResult Function(_ResetSearchState value) resetSearchState,
  }) {
    return getAllSearchItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllSearchItems value)? getAllSearchItems,
    TResult? Function(_ResetSearchState value)? resetSearchState,
  }) {
    return getAllSearchItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllSearchItems value)? getAllSearchItems,
    TResult Function(_ResetSearchState value)? resetSearchState,
    required TResult orElse(),
  }) {
    if (getAllSearchItems != null) {
      return getAllSearchItems(this);
    }
    return orElse();
  }
}

abstract class _GetAllSearchItems implements SearchesEvent {
  const factory _GetAllSearchItems(final String searchParams) =
      _$GetAllSearchItemsImpl;

  String get searchParams;
  @JsonKey(ignore: true)
  _$$GetAllSearchItemsImplCopyWith<_$GetAllSearchItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetSearchStateImplCopyWith<$Res> {
  factory _$$ResetSearchStateImplCopyWith(_$ResetSearchStateImpl value,
          $Res Function(_$ResetSearchStateImpl) then) =
      __$$ResetSearchStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetSearchStateImplCopyWithImpl<$Res>
    extends _$SearchesEventCopyWithImpl<$Res, _$ResetSearchStateImpl>
    implements _$$ResetSearchStateImplCopyWith<$Res> {
  __$$ResetSearchStateImplCopyWithImpl(_$ResetSearchStateImpl _value,
      $Res Function(_$ResetSearchStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetSearchStateImpl implements _ResetSearchState {
  const _$ResetSearchStateImpl();

  @override
  String toString() {
    return 'SearchesEvent.resetSearchState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetSearchStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchParams) getAllSearchItems,
    required TResult Function() resetSearchState,
  }) {
    return resetSearchState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchParams)? getAllSearchItems,
    TResult? Function()? resetSearchState,
  }) {
    return resetSearchState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchParams)? getAllSearchItems,
    TResult Function()? resetSearchState,
    required TResult orElse(),
  }) {
    if (resetSearchState != null) {
      return resetSearchState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllSearchItems value) getAllSearchItems,
    required TResult Function(_ResetSearchState value) resetSearchState,
  }) {
    return resetSearchState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllSearchItems value)? getAllSearchItems,
    TResult? Function(_ResetSearchState value)? resetSearchState,
  }) {
    return resetSearchState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllSearchItems value)? getAllSearchItems,
    TResult Function(_ResetSearchState value)? resetSearchState,
    required TResult orElse(),
  }) {
    if (resetSearchState != null) {
      return resetSearchState(this);
    }
    return orElse();
  }
}

abstract class _ResetSearchState implements SearchesEvent {
  const factory _ResetSearchState() = _$ResetSearchStateImpl;
}

/// @nodoc
mixin _$SearchesState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<HomeScreenData> get searchDetails => throw _privateConstructorUsedError;
  bool get isSearchEmpty => throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<HomeScreenData>>>
      get searchesSuccessOrFailure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchesStateCopyWith<SearchesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchesStateCopyWith<$Res> {
  factory $SearchesStateCopyWith(
          SearchesState value, $Res Function(SearchesState) then) =
      _$SearchesStateCopyWithImpl<$Res, SearchesState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<HomeScreenData> searchDetails,
      bool isSearchEmpty,
      Option<Either<MainFailure, List<HomeScreenData>>>
          searchesSuccessOrFailure});
}

/// @nodoc
class _$SearchesStateCopyWithImpl<$Res, $Val extends SearchesState>
    implements $SearchesStateCopyWith<$Res> {
  _$SearchesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? searchDetails = null,
    Object? isSearchEmpty = null,
    Object? searchesSuccessOrFailure = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      searchDetails: null == searchDetails
          ? _value.searchDetails
          : searchDetails // ignore: cast_nullable_to_non_nullable
              as List<HomeScreenData>,
      isSearchEmpty: null == isSearchEmpty
          ? _value.isSearchEmpty
          : isSearchEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
      searchesSuccessOrFailure: null == searchesSuccessOrFailure
          ? _value.searchesSuccessOrFailure
          : searchesSuccessOrFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<HomeScreenData>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchesStateImplCopyWith<$Res>
    implements $SearchesStateCopyWith<$Res> {
  factory _$$SearchesStateImplCopyWith(
          _$SearchesStateImpl value, $Res Function(_$SearchesStateImpl) then) =
      __$$SearchesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<HomeScreenData> searchDetails,
      bool isSearchEmpty,
      Option<Either<MainFailure, List<HomeScreenData>>>
          searchesSuccessOrFailure});
}

/// @nodoc
class __$$SearchesStateImplCopyWithImpl<$Res>
    extends _$SearchesStateCopyWithImpl<$Res, _$SearchesStateImpl>
    implements _$$SearchesStateImplCopyWith<$Res> {
  __$$SearchesStateImplCopyWithImpl(
      _$SearchesStateImpl _value, $Res Function(_$SearchesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? searchDetails = null,
    Object? isSearchEmpty = null,
    Object? searchesSuccessOrFailure = null,
  }) {
    return _then(_$SearchesStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      searchDetails: null == searchDetails
          ? _value._searchDetails
          : searchDetails // ignore: cast_nullable_to_non_nullable
              as List<HomeScreenData>,
      isSearchEmpty: null == isSearchEmpty
          ? _value.isSearchEmpty
          : isSearchEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
      searchesSuccessOrFailure: null == searchesSuccessOrFailure
          ? _value.searchesSuccessOrFailure
          : searchesSuccessOrFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<HomeScreenData>>>,
    ));
  }
}

/// @nodoc

class _$SearchesStateImpl implements _SearchesState {
  const _$SearchesStateImpl(
      {required this.isLoading,
      required final List<HomeScreenData> searchDetails,
      required this.isSearchEmpty,
      required this.searchesSuccessOrFailure})
      : _searchDetails = searchDetails;

  @override
  final bool isLoading;
  final List<HomeScreenData> _searchDetails;
  @override
  List<HomeScreenData> get searchDetails {
    if (_searchDetails is EqualUnmodifiableListView) return _searchDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchDetails);
  }

  @override
  final bool isSearchEmpty;
  @override
  final Option<Either<MainFailure, List<HomeScreenData>>>
      searchesSuccessOrFailure;

  @override
  String toString() {
    return 'SearchesState(isLoading: $isLoading, searchDetails: $searchDetails, isSearchEmpty: $isSearchEmpty, searchesSuccessOrFailure: $searchesSuccessOrFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchesStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._searchDetails, _searchDetails) &&
            (identical(other.isSearchEmpty, isSearchEmpty) ||
                other.isSearchEmpty == isSearchEmpty) &&
            (identical(
                    other.searchesSuccessOrFailure, searchesSuccessOrFailure) ||
                other.searchesSuccessOrFailure == searchesSuccessOrFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_searchDetails),
      isSearchEmpty,
      searchesSuccessOrFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchesStateImplCopyWith<_$SearchesStateImpl> get copyWith =>
      __$$SearchesStateImplCopyWithImpl<_$SearchesStateImpl>(this, _$identity);
}

abstract class _SearchesState implements SearchesState {
  const factory _SearchesState(
      {required final bool isLoading,
      required final List<HomeScreenData> searchDetails,
      required final bool isSearchEmpty,
      required final Option<Either<MainFailure, List<HomeScreenData>>>
          searchesSuccessOrFailure}) = _$SearchesStateImpl;

  @override
  bool get isLoading;
  @override
  List<HomeScreenData> get searchDetails;
  @override
  bool get isSearchEmpty;
  @override
  Option<Either<MainFailure, List<HomeScreenData>>>
      get searchesSuccessOrFailure;
  @override
  @JsonKey(ignore: true)
  _$$SearchesStateImplCopyWith<_$SearchesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
