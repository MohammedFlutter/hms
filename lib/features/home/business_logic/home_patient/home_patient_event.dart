

import 'package:freezed_annotation/freezed_annotation.dart';


part 'home_patient_event.freezed.dart';

@freezed
class HomePatientEvent with _$HomePatientEvent {
  const factory HomePatientEvent.started() = Started;
}
