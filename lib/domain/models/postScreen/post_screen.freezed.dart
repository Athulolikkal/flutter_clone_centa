// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_screen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostsData _$PostsDataFromJson(Map<String, dynamic> json) {
  return _PostsData.fromJson(json);
}

/// @nodoc
mixin _$PostsData {
  @JsonKey(name: 'id')
  String get postId => throw _privateConstructorUsedError;
  @JsonKey(name: 'post_content')
  List<Map<String, dynamic>>? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get date => throw _privateConstructorUsedError;
  List<String>? get likes => throw _privateConstructorUsedError;
  List<Map<String, dynamic>>? get comments =>
      throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostsDataCopyWith<PostsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsDataCopyWith<$Res> {
  factory $PostsDataCopyWith(PostsData value, $Res Function(PostsData) then) =
      _$PostsDataCopyWithImpl<$Res, PostsData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String postId,
      @JsonKey(name: 'post_content') List<Map<String, dynamic>>? content,
      @JsonKey(name: 'updated_at') String date,
      List<String>? likes,
      List<Map<String, dynamic>>? comments,
      String? userId});
}

/// @nodoc
class _$PostsDataCopyWithImpl<$Res, $Val extends PostsData>
    implements $PostsDataCopyWith<$Res> {
  _$PostsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? content = freezed,
    Object? date = null,
    Object? likes = freezed,
    Object? comments = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostsDataImplCopyWith<$Res>
    implements $PostsDataCopyWith<$Res> {
  factory _$$PostsDataImplCopyWith(
          _$PostsDataImpl value, $Res Function(_$PostsDataImpl) then) =
      __$$PostsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String postId,
      @JsonKey(name: 'post_content') List<Map<String, dynamic>>? content,
      @JsonKey(name: 'updated_at') String date,
      List<String>? likes,
      List<Map<String, dynamic>>? comments,
      String? userId});
}

/// @nodoc
class __$$PostsDataImplCopyWithImpl<$Res>
    extends _$PostsDataCopyWithImpl<$Res, _$PostsDataImpl>
    implements _$$PostsDataImplCopyWith<$Res> {
  __$$PostsDataImplCopyWithImpl(
      _$PostsDataImpl _value, $Res Function(_$PostsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? content = freezed,
    Object? date = null,
    Object? likes = freezed,
    Object? comments = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$PostsDataImpl(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      content: freezed == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      likes: freezed == likes
          ? _value._likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      comments: freezed == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostsDataImpl implements _PostsData {
  const _$PostsDataImpl(
      {@JsonKey(name: 'id') required this.postId,
      @JsonKey(name: 'post_content')
      required final List<Map<String, dynamic>>? content,
      @JsonKey(name: 'updated_at') required this.date,
      required final List<String>? likes,
      required final List<Map<String, dynamic>>? comments,
      required this.userId})
      : _content = content,
        _likes = likes,
        _comments = comments;

  factory _$PostsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostsDataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String postId;
  final List<Map<String, dynamic>>? _content;
  @override
  @JsonKey(name: 'post_content')
  List<Map<String, dynamic>>? get content {
    final value = _content;
    if (value == null) return null;
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'updated_at')
  final String date;
  final List<String>? _likes;
  @override
  List<String>? get likes {
    final value = _likes;
    if (value == null) return null;
    if (_likes is EqualUnmodifiableListView) return _likes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Map<String, dynamic>>? _comments;
  @override
  List<Map<String, dynamic>>? get comments {
    final value = _comments;
    if (value == null) return null;
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? userId;

  @override
  String toString() {
    return 'PostsData(postId: $postId, content: $content, date: $date, likes: $likes, comments: $comments, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostsDataImpl &&
            (identical(other.postId, postId) || other.postId == postId) &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other._likes, _likes) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      postId,
      const DeepCollectionEquality().hash(_content),
      date,
      const DeepCollectionEquality().hash(_likes),
      const DeepCollectionEquality().hash(_comments),
      userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostsDataImplCopyWith<_$PostsDataImpl> get copyWith =>
      __$$PostsDataImplCopyWithImpl<_$PostsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostsDataImplToJson(
      this,
    );
  }
}

abstract class _PostsData implements PostsData {
  const factory _PostsData(
      {@JsonKey(name: 'id') required final String postId,
      @JsonKey(name: 'post_content')
      required final List<Map<String, dynamic>>? content,
      @JsonKey(name: 'updated_at') required final String date,
      required final List<String>? likes,
      required final List<Map<String, dynamic>>? comments,
      required final String? userId}) = _$PostsDataImpl;

  factory _PostsData.fromJson(Map<String, dynamic> json) =
      _$PostsDataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get postId;
  @override
  @JsonKey(name: 'post_content')
  List<Map<String, dynamic>>? get content;
  @override
  @JsonKey(name: 'updated_at')
  String get date;
  @override
  List<String>? get likes;
  @override
  List<Map<String, dynamic>>? get comments;
  @override
  String? get userId;
  @override
  @JsonKey(ignore: true)
  _$$PostsDataImplCopyWith<_$PostsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
