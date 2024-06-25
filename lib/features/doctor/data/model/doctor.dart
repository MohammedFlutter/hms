
import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor.freezed.dart';

part 'doctor.g.dart';

@freezed
class Doctor with _$Doctor {
  const factory Doctor(
      {required int id,
      @JsonKey(name: 'requiredInfoDto') required BasicInfo basicInfo,
      @JsonKey(name: 'additionalInfoDto')
      required ProfessionalDetails professionalDetails}) = _Doctor;

  factory Doctor.fromJson(Map<String, dynamic> json) =>
      _$DoctorFromJson(json);
}

@freezed
class BasicInfo with _$BasicInfo {
  const factory BasicInfo({
    required String firstname,
    required String lastname,
    required String gender,
    required String address,
    required String phone,
    @JsonKey(name:'is_enabled' )
    required bool isEnabled,
  }) = _BasicInfo;

  factory BasicInfo.fromJson(Map<String, dynamic> json) =>
      _$BasicInfoFromJson(json);
}

@freezed
class ProfessionalDetails with _$ProfessionalDetails {
  const factory ProfessionalDetails({
    String? education,
    String? certifications,
    String? experience,
    bool? activeStatus,
    String? specialty,
    String? licenseNumber,
    String? workStartTime,
    String? workEndTime,
  }) = _ProfessionalDetails;

  factory ProfessionalDetails.fromJson(Map<String, dynamic> json) =>
      _$ProfessionalDetailsFromJson(json);
}
