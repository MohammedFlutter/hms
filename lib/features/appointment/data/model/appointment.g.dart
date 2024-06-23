// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppointmentImpl _$$AppointmentImplFromJson(Map<String, dynamic> json) =>
    _$AppointmentImpl(
      startTime: json['startTime'] as String,
      reasonForVisit: json['reasonForVisit'] as String,
      doctorId: (json['doctorId'] as num).toInt(),
      isVirtual: json['isVirtual'] as bool,
    );

Map<String, dynamic> _$$AppointmentImplToJson(_$AppointmentImpl instance) =>
    <String, dynamic>{
      'startTime': instance.startTime,
      'reasonForVisit': instance.reasonForVisit,
      'doctorId': instance.doctorId,
      'isVirtual': instance.isVirtual,
    };
