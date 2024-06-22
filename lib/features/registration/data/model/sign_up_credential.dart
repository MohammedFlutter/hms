import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_credential.freezed.dart';

part 'sign_up_credential.g.dart';

@freezed
class SignUpCredential with _$SignUpCredential {
  const factory SignUpCredential({
    required String firstname,
    required String lastname,
    required String email,
    required String password,
  }) = _SignUpCredential;

  factory SignUpCredential.fromJson(Map<String, dynamic> json) =>
      _$SignUpCredentialFromJson(json);
}
