// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DoctorDetailsImpl _$$DoctorDetailsImplFromJson(Map<String, dynamic> json) =>
    _$DoctorDetailsImpl(
      id: (json['id'] as num).toInt(),
      basicInfo:
          BasicInfo.fromJson(json['requiredInfoDto'] as Map<String, dynamic>),
      professionalDetails: ProfessionalDetails.fromJson(
          json['additionalInfoDto'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DoctorDetailsImplToJson(_$DoctorDetailsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'requiredInfoDto': instance.basicInfo,
      'additionalInfoDto': instance.professionalDetails,
    };

_$BasicInfoImpl _$$BasicInfoImplFromJson(Map<String, dynamic> json) =>
    _$BasicInfoImpl(
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      gender: json['gender'] as String,
      address: json['address'] as String,
      phone: json['phone'] as String,
      isEnabled: json['is_enabled'] as bool,
    );

Map<String, dynamic> _$$BasicInfoImplToJson(_$BasicInfoImpl instance) =>
    <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'gender': instance.gender,
      'address': instance.address,
      'phone': instance.phone,
      'is_enabled': instance.isEnabled,
    };

_$ProfessionalDetailsImpl _$$ProfessionalDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfessionalDetailsImpl(
      education: json['education'] as String?,
      certifications: json['certifications'] as String?,
      experience: json['experience'] as String?,
      activeStatus: json['activeStatus'] as bool?,
      specialty: json['specialty'] as String?,
      licenseNumber: json['licenseNumber'] as String?,
      workStartTime: json['workStartTime'] as String?,
      workEndTime: json['workEndTime'] as String?,
    );

Map<String, dynamic> _$$ProfessionalDetailsImplToJson(
        _$ProfessionalDetailsImpl instance) =>
    <String, dynamic>{
      'education': instance.education,
      'certifications': instance.certifications,
      'experience': instance.experience,
      'activeStatus': instance.activeStatus,
      'specialty': instance.specialty,
      'licenseNumber': instance.licenseNumber,
      'workStartTime': instance.workStartTime,
      'workEndTime': instance.workEndTime,
    };
