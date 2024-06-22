import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_credential.freezed.dart';

part 'sign_in_credential.g.dart';

@freezed
class SignInCredential with _$SignInCredential {
  const factory SignInCredential(
      {required String email, required String password}) = _SignInCredential;

  factory SignInCredential.fromJson(Map<String, dynamic> json) =>
      _$SignInCredentialFromJson(json);
}
