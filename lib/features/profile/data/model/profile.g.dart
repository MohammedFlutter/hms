// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileImpl _$$ProfileImplFromJson(Map<String, dynamic> json) =>
    _$ProfileImpl(
      id: (json['id'] as num?)?.toInt(),
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      dob: json['dob'] as String?,
      gender: json['gender'] as String?,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      email: json['email'] as String,
      roles: json['roles'] as String?,
    );

Map<String, dynamic> _$$ProfileImplToJson(_$ProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'dob': instance.dob,
      'gender': instance.gender,
      'phone': instance.phone,
      'address': instance.address,
      'email': instance.email,
      'roles': instance.roles,
    };
