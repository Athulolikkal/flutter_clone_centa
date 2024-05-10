import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_screen.freezed.dart';
//if we are creating modals then only need to generate the 'g.dart' file
part 'home_screen.g.dart';

@freezed
class HomeScreenData with _$HomeScreenData{
  const factory HomeScreenData({
 @JsonKey(name:'profile') required String? imageUrl,
 required String? title,
  })=_HomeScreenData;

  factory HomeScreenData.fromJson(Map<String,dynamic>json)=>_$HomeScreenDataFromJson(json);
  
}