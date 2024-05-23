// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'posts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllActivePosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllActivePosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllActivePosts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllActivePosts value) getAllActivePosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllActivePosts value)? getAllActivePosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllActivePosts value)? getAllActivePosts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsEventCopyWith<$Res> {
  factory $PostsEventCopyWith(
          PostsEvent value, $Res Function(PostsEvent) then) =
      _$PostsEventCopyWithImpl<$Res, PostsEvent>;
}

/// @nodoc
class _$PostsEventCopyWithImpl<$Res, $Val extends PostsEvent>
    implements $PostsEventCopyWith<$Res> {
  _$PostsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllActivePostsImplCopyWith<$Res> {
  factory _$$GetAllActivePostsImplCopyWith(_$GetAllActivePostsImpl value,
          $Res Function(_$GetAllActivePostsImpl) then) =
      __$$GetAllActivePostsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllActivePostsImplCopyWithImpl<$Res>
    extends _$PostsEventCopyWithImpl<$Res, _$GetAllActivePostsImpl>
    implements _$$GetAllActivePostsImplCopyWith<$Res> {
  __$$GetAllActivePostsImplCopyWithImpl(_$GetAllActivePostsImpl _value,
      $Res Function(_$GetAllActivePostsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllActivePostsImpl implements _GetAllActivePosts {
  const _$GetAllActivePostsImpl();

  @override
  String toString() {
    return 'PostsEvent.getAllActivePosts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllActivePostsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllActivePosts,
  }) {
    return getAllActivePosts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllActivePosts,
  }) {
    return getAllActivePosts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllActivePosts,
    required TResult orElse(),
  }) {
    if (getAllActivePosts != null) {
      return getAllActivePosts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllActivePosts value) getAllActivePosts,
  }) {
    return getAllActivePosts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllActivePosts value)? getAllActivePosts,
  }) {
    return getAllActivePosts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllActivePosts value)? getAllActivePosts,
    required TResult orElse(),
  }) {
    if (getAllActivePosts != null) {
      return getAllActivePosts(this);
    }
    return orElse();
  }
}

abstract class _GetAllActivePosts implements PostsEvent {
  const factory _GetAllActivePosts() = _$GetAllActivePostsImpl;
}

/// @nodoc
mixin _$PostsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<PostsData> get posts => throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<PostsData>>> get postsFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostsStateCopyWith<PostsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsStateCopyWith<$Res> {
  factory $PostsStateCopyWith(
          PostsState value, $Res Function(PostsState) then) =
      _$PostsStateCopyWithImpl<$Res, PostsState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<PostsData> posts,
      Option<Either<MainFailure, List<PostsData>>> postsFailureOrSuccess});
}

/// @nodoc
class _$PostsStateCopyWithImpl<$Res, $Val extends PostsState>
    implements $PostsStateCopyWith<$Res> {
  _$PostsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? posts = null,
    Object? postsFailureOrSuccess = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostsData>,
      postsFailureOrSuccess: null == postsFailureOrSuccess
          ? _value.postsFailureOrSuccess
          : postsFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<PostsData>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostsStateImplCopyWith<$Res>
    implements $PostsStateCopyWith<$Res> {
  factory _$$PostsStateImplCopyWith(
          _$PostsStateImpl value, $Res Function(_$PostsStateImpl) then) =
      __$$PostsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<PostsData> posts,
      Option<Either<MainFailure, List<PostsData>>> postsFailureOrSuccess});
}

/// @nodoc
class __$$PostsStateImplCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res, _$PostsStateImpl>
    implements _$$PostsStateImplCopyWith<$Res> {
  __$$PostsStateImplCopyWithImpl(
      _$PostsStateImpl _value, $Res Function(_$PostsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? posts = null,
    Object? postsFailureOrSuccess = null,
  }) {
    return _then(_$PostsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      posts: null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostsData>,
      postsFailureOrSuccess: null == postsFailureOrSuccess
          ? _value.postsFailureOrSuccess
          : postsFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<PostsData>>>,
    ));
  }
}

/// @nodoc

class _$PostsStateImpl implements _PostsState {
  const _$PostsStateImpl(
      {required this.isLoading,
      required final List<PostsData> posts,
      required this.postsFailureOrSuccess})
      : _posts = posts;

  @override
  final bool isLoading;
  final List<PostsData> _posts;
  @override
  List<PostsData> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  final Option<Either<MainFailure, List<PostsData>>> postsFailureOrSuccess;

  @override
  String toString() {
    return 'PostsState(isLoading: $isLoading, posts: $posts, postsFailureOrSuccess: $postsFailureOrSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._posts, _posts) &&
            (identical(other.postsFailureOrSuccess, postsFailureOrSuccess) ||
                other.postsFailureOrSuccess == postsFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_posts), postsFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostsStateImplCopyWith<_$PostsStateImpl> get copyWith =>
      __$$PostsStateImplCopyWithImpl<_$PostsStateImpl>(this, _$identity);
}

abstract class _PostsState implements PostsState {
  const factory _PostsState(
      {required final bool isLoading,
      required final List<PostsData> posts,
      required final Option<Either<MainFailure, List<PostsData>>>
          postsFailureOrSuccess}) = _$PostsStateImpl;

  @override
  bool get isLoading;
  @override
  List<PostsData> get posts;
  @override
  Option<Either<MainFailure, List<PostsData>>> get postsFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$PostsStateImplCopyWith<_$PostsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
