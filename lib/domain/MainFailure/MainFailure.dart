import 'package:freezed_annotation/freezed_annotation.dart';
part 'MainFailure.freezed.dart';

@freezed
class MainFailure with _$MainFailure {
  const factory MainFailure.clientfailure() = _Clientfailure;
  const factory MainFailure.serverfailure() = _Serverfailure;
}
