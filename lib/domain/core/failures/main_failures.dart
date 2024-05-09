import 'package:freezed_annotation/freezed_annotation.dart';
part 'main_failures.freezed.dart';
@freezed

//what kinds of failures!
class MainFailure  with _$MainFailure{
  const factory MainFailure.clientFailure()=_ClientFailure;
  const factory MainFailure.serverFailure()=_ServerFailure;
}