// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_appointment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DoctorAppointmentImpl _$$DoctorAppointmentImplFromJson(
        Map<String, dynamic> json) =>
    _$DoctorAppointmentImpl(
      startTime: json['startTime'] as String,
      reasonForVisit: json['reasonForVisit'] as String,
      patientId: (json['patientId'] as num).toInt(),
      isVirtual: json['isVirtual'] as bool?,
    );

Map<String, dynamic> _$$DoctorAppointmentImplToJson(
        _$DoctorAppointmentImpl instance) =>
    <String, dynamic>{
      'startTime': instance.startTime,
      'reasonForVisit': instance.reasonForVisit,
      'patientId': instance.patientId,
      'isVirtual': instance.isVirtual,
    };
