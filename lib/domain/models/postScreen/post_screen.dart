import 'package:freezed_annotation/freezed_annotation.dart';
part 'post_screen.freezed.dart';
part 'post_screen.g.dart';

@freezed
class PostsData with _$PostsData {
  const factory PostsData({
    @JsonKey(name: 'id') required String postId,
    @JsonKey(name: 'post_content') required List<Map<String, dynamic>>? content,
    @JsonKey(name: 'updated_at') required String date,
    @JsonKey(name: 'user_details') required Map userDetails,
    required List<String>? likes,
    required List<Map<String, dynamic>>? comments,
    required String? userId,
  }) = _PostsData;
  factory PostsData.fromJson(Map<String, dynamic> json) =>
      _$PostsDataFromJson(json);
}
