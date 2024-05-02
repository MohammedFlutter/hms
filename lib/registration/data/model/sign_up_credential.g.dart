// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_credential.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpCredentialImpl _$$SignUpCredentialImplFromJson(
        Map<String, dynamic> json) =>
    _$SignUpCredentialImpl(
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      role: json['role'] as String? ?? 'ROLE_PATIENT',
    );

Map<String, dynamic> _$$SignUpCredentialImplToJson(
        _$SignUpCredentialImpl instance) =>
    <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'email': instance.email,
      'password': instance.password,
      'role': instance.role,
    };
