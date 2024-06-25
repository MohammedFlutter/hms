
import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient.freezed.dart';
part 'patient.g.dart';

@freezed
class Patient with _$Patient {
  const factory Patient({
    required int id,
    @JsonKey(name: 'requiredInfoDto')
    required BasicInfo  basicInfo,
    @JsonKey(name: 'additionalInfoDto')
    ExtraInfo? extraInfo, // Now nullable
    int? patientHistoryId,
  }) = _Patient;

  factory Patient.fromJson(Map<String, dynamic> json) =>
      _$PatientFromJson(json);
}

@freezed
class BasicInfo with _$BasicInfo {
  const factory BasicInfo({
    required String firstname,
    required String lastname,
    String? gender,
    String? dob,
    String? phone,
  }) = _BasicInfo;

  factory BasicInfo.fromJson(Map<String, dynamic> json) =>
      _$BasicInfoFromJson(json);
}

@freezed
class ExtraInfo with _$ExtraInfo {
  const factory ExtraInfo({
    String? insurancePolicyNumber,
    String? bloodType,
    String? maritalStatus,
    String? nationality,
  }) = _ExtraInfo;

  factory ExtraInfo.fromJson(Map<String, dynamic> json) =>
      _$ExtraInfoFromJson(json);
}