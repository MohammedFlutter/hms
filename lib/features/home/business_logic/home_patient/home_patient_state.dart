import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_patient_state.freezed.dart';

@freezed
class HomePatientState with _$HomePatientState {
  const factory HomePatientState({
    @Default('') String errorMessage,
    @Default('') String firstname,
    @Default(HomePatientStatus.initial) HomePatientStatus status,
  }) = _HomePatientState;
}

enum HomePatientStatus {
  initial,
  loading,
  success,
  failure,
}
