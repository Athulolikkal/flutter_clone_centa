// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_screen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostsDataImpl _$$PostsDataImplFromJson(Map<String, dynamic> json) =>
    _$PostsDataImpl(
      postId: json['id'] as String,
      content: (json['post_content'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      date: json['updated_at'] as String,
      userDetails: json['user_details'] as Map<String, dynamic>,
      likes:
          (json['likes'] as List<dynamic>?)?.map((e) => e as String).toList(),
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$$PostsDataImplToJson(_$PostsDataImpl instance) =>
    <String, dynamic>{
      'id': instance.postId,
      'post_content': instance.content,
      'updated_at': instance.date,
      'user_details': instance.userDetails,
      'likes': instance.likes,
      'comments': instance.comments,
      'userId': instance.userId,
    };
