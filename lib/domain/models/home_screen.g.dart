// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_screen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeScreenDataImpl _$$HomeScreenDataImplFromJson(Map<String, dynamic> json) =>
    _$HomeScreenDataImpl(
      imageUrl: json['profile'] as String?,
      courseId: json['id'] as String?,
      serialNumber: (json['sl_no'] as num?)?.toInt(),
      searches: json['searches'] as num?,
      price: json['price'] as num?,
      tag: json['tag'] as String?,
      creator: json['creator'] as String?,
      description: json['description'] as String?,
      type: json['type'] as String?,
      title: json['title'] as String?,
      date: json['date'] as String?,
      rating: json['rating'] as num?,
    );

Map<String, dynamic> _$$HomeScreenDataImplToJson(
        _$HomeScreenDataImpl instance) =>
    <String, dynamic>{
      'profile': instance.imageUrl,
      'id': instance.courseId,
      'sl_no': instance.serialNumber,
      'searches': instance.searches,
      'price': instance.price,
      'tag': instance.tag,
      'creator': instance.creator,
      'description': instance.description,
      'type': instance.type,
      'title': instance.title,
      'date': instance.date,
      'rating': instance.rating,
    };
