// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_appointment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientAppointmentImpl _$$PatientAppointmentImplFromJson(
        Map<String, dynamic> json) =>
    _$PatientAppointmentImpl(
      startTime: json['startTime'] as String,
      reasonForVisit: json['reasonForVisit'] as String,
      doctorId: (json['doctorId'] as num).toInt(),
      isVirtual: json['isVirtual'] as bool,
    );

Map<String, dynamic> _$$PatientAppointmentImplToJson(
        _$PatientAppointmentImpl instance) =>
    <String, dynamic>{
      'startTime': instance.startTime,
      'reasonForVisit': instance.reasonForVisit,
      'doctorId': instance.doctorId,
      'isVirtual': instance.isVirtual,
    };
