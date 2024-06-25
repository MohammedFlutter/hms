import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medica/features/doctor/data/model/doctor.dart';

part 'doctor_search_state.freezed.dart';

@freezed
class SearchDoctorState with _$SearchDoctorState {
  const factory SearchDoctorState({
    @Default([]) List<Doctor> doctors,
    @Default(true) bool isAscending,
    @Default('') String selectedSpecializations,
    @Default('') String searchQuery,
    @Default('') String errorMessage,
    @Default(DoctorStatus.initial) DoctorStatus status,
  }) = _SearchDoctorState;
}

enum DoctorStatus { initial, loading, success, failure }
