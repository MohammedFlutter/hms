import 'package:freezed_annotation/freezed_annotation.dart';

part 'tokens.freezed.dart';

part 'tokens.g.dart';

@freezed
class Tokens with _$Tokens {
  const factory Tokens({
    @JsonKey(name: 'refresh_token') required String refreshToken,
    @JsonKey(name: 'access_token') required String accessToken,
  }) = _Tokens;

  factory Tokens.fromJson(Map<String, dynamic> json) => _$TokensFromJson(json);
}
