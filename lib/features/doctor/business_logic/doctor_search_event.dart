import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor_search_event.freezed.dart';

@freezed
class DoctorSearchEvent with _$DoctorSearchEvent {
  const factory DoctorSearchEvent.started() = _Started;
  const factory DoctorSearchEvent.loadDoctor() = _LoadDoctor;
  const factory DoctorSearchEvent.searchDoctors(String searchQuery) = _SearchDoctors;
  const factory DoctorSearchEvent.sortDoctors(bool isAscending) = _SortDoctors;
  const factory DoctorSearchEvent.filterDoctorsBySpecializations(String? selectedSpecializations) = _FilterDoctors;
}
