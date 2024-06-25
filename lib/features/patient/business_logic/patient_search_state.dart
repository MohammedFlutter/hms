import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medica/features/patient/data/model/patient.dart';
import 'package:medica/features/patient/data/model/patient_history.dart';

part 'patient_search_state.freezed.dart';

@freezed
class PatientSearchState with _$PatientSearchState {
  const factory PatientSearchState({

     @Default(null) PatientHistory? patientHistory,
    @Default([]) List<Patient> patients,
    @Default(true) bool isAscending,
    @Default('') String searchQuery,
    @Default('') String errorMessage,
    @Default(PatientSearchStatus.initial) PatientSearchStatus status,
  }) = _PatientSearchState;

}


enum PatientSearchStatus { initial, loading, searchLoaded,patientHistoryLoaded, failure }
