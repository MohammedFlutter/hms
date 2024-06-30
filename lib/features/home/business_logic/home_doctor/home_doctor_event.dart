

import 'package:freezed_annotation/freezed_annotation.dart';


part 'home_doctor_event.freezed.dart';

@freezed
class HomeDoctorEvent with _$HomeDoctorEvent {
  const factory HomeDoctorEvent.started() = Started;
}
