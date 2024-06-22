
import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor.freezed.dart';

part 'doctor.g.dart';

@freezed
class DoctorDetails with _$DoctorDetails {
  const factory DoctorDetails(
      {required int id,
      @JsonKey(name: 'requiredInfoDto') required BasicInfo basicInfo,
      @JsonKey(name: 'additionalInfoDto')
      required ProfessionalDetails professionalDetails}) = _DoctorDetails;

  factory DoctorDetails.fromJson(Map<String, dynamic> json) =>
      _$DoctorDetailsFromJson(json);
}

@freezed
class BasicInfo with _$BasicInfo {
  const factory BasicInfo({
    required String firstname,
    required String lastname,
    required String gender,
    // required String dob,
    required String address,
    required String phone,
    // required String email,
    // required String password,
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
