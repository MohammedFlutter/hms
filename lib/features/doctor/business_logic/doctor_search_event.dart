import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor_search_event.freezed.dart';

@freezed
class SearchDoctorEvent with _$SearchDoctorEvent {
  const factory SearchDoctorEvent.started() = _Started;
  const factory SearchDoctorEvent.loadDoctor() = _LoadDoctor;
  const factory SearchDoctorEvent.searchDoctors(String searchQuery) = _SearchDoctors;
  const factory SearchDoctorEvent.sortDoctors(bool isAscending) = _SortDoctors;
  const factory SearchDoctorEvent.filterDoctorsBySpecializations(String? selectedSpecializations) = _FilterDoctors;
}
