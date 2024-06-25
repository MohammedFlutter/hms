import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_search_event.freezed.dart';

@freezed
class PatientSearchEvent with _$PatientSearchEvent {
  const factory PatientSearchEvent.started() = Started;

  const factory PatientSearchEvent.sortPatients(bool isAscending) =
      SortPatients;

  const factory PatientSearchEvent.searchPatients(String fullName) =
      SearchPatients;

  const factory PatientSearchEvent.loadPatientHistory(int patientId) =
      LoadPatientHistory;
}
