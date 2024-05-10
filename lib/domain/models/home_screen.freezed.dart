// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_screen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeScreenData _$HomeScreenDataFromJson(Map<String, dynamic> json) {
  return _HomeScreenData.fromJson(json);
}

/// @nodoc
mixin _$HomeScreenData {
  @JsonKey(name: 'profile')
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeScreenDataCopyWith<HomeScreenData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenDataCopyWith<$Res> {
  factory $HomeScreenDataCopyWith(
          HomeScreenData value, $Res Function(HomeScreenData) then) =
      _$HomeScreenDataCopyWithImpl<$Res, HomeScreenData>;
  @useResult
  $Res call({@JsonKey(name: 'profile') String? imageUrl, String? title});
}

/// @nodoc
class _$HomeScreenDataCopyWithImpl<$Res, $Val extends HomeScreenData>
    implements $HomeScreenDataCopyWith<$Res> {
  _$HomeScreenDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeScreenDataImplCopyWith<$Res>
    implements $HomeScreenDataCopyWith<$Res> {
  factory _$$HomeScreenDataImplCopyWith(_$HomeScreenDataImpl value,
          $Res Function(_$HomeScreenDataImpl) then) =
      __$$HomeScreenDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'profile') String? imageUrl, String? title});
}

/// @nodoc
class __$$HomeScreenDataImplCopyWithImpl<$Res>
    extends _$HomeScreenDataCopyWithImpl<$Res, _$HomeScreenDataImpl>
    implements _$$HomeScreenDataImplCopyWith<$Res> {
  __$$HomeScreenDataImplCopyWithImpl(
      _$HomeScreenDataImpl _value, $Res Function(_$HomeScreenDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? title = freezed,
  }) {
    return _then(_$HomeScreenDataImpl(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeScreenDataImpl implements _HomeScreenData {
  const _$HomeScreenDataImpl(
      {@JsonKey(name: 'profile') required this.imageUrl, required this.title});

  factory _$HomeScreenDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeScreenDataImplFromJson(json);

  @override
  @JsonKey(name: 'profile')
  final String? imageUrl;
  @override
  final String? title;

  @override
  String toString() {
    return 'HomeScreenData(imageUrl: $imageUrl, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeScreenDataImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeScreenDataImplCopyWith<_$HomeScreenDataImpl> get copyWith =>
      __$$HomeScreenDataImplCopyWithImpl<_$HomeScreenDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeScreenDataImplToJson(
      this,
    );
  }
}

abstract class _HomeScreenData implements HomeScreenData {
  const factory _HomeScreenData(
      {@JsonKey(name: 'profile') required final String? imageUrl,
      required final String? title}) = _$HomeScreenDataImpl;

  factory _HomeScreenData.fromJson(Map<String, dynamic> json) =
      _$HomeScreenDataImpl.fromJson;

  @override
  @JsonKey(name: 'profile')
  String? get imageUrl;
  @override
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$HomeScreenDataImplCopyWith<_$HomeScreenDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}