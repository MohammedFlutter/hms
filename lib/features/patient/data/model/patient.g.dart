// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientImpl _$$PatientImplFromJson(Map<String, dynamic> json) =>
    _$PatientImpl(
      id: (json['id'] as num).toInt(),
      basicInfo:
          BasicInfo.fromJson(json['requiredInfoDto'] as Map<String, dynamic>),
      extraInfo: json['additionalInfoDto'] == null
          ? null
          : ExtraInfo.fromJson(
              json['additionalInfoDto'] as Map<String, dynamic>),
      patientHistoryId: (json['patientHistoryId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PatientImplToJson(_$PatientImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'requiredInfoDto': instance.basicInfo,
      'additionalInfoDto': instance.extraInfo,
      'patientHistoryId': instance.patientHistoryId,
    };

_$BasicInfoImpl _$$BasicInfoImplFromJson(Map<String, dynamic> json) =>
    _$BasicInfoImpl(
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      gender: json['gender'] as String?,
      dob: json['dob'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$$BasicInfoImplToJson(_$BasicInfoImpl instance) =>
    <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'gender': instance.gender,
      'dob': instance.dob,
      'phone': instance.phone,
    };

_$ExtraInfoImpl _$$ExtraInfoImplFromJson(Map<String, dynamic> json) =>
    _$ExtraInfoImpl(
      insurancePolicyNumber: json['insurancePolicyNumber'] as String?,
      bloodType: json['bloodType'] as String?,
      maritalStatus: json['maritalStatus'] as String?,
      nationality: json['nationality'] as String?,
    );

Map<String, dynamic> _$$ExtraInfoImplToJson(_$ExtraInfoImpl instance) =>
    <String, dynamic>{
      'insurancePolicyNumber': instance.insurancePolicyNumber,
      'bloodType': instance.bloodType,
      'maritalStatus': instance.maritalStatus,
      'nationality': instance.nationality,
    };
