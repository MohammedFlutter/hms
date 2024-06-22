import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:medica/core/exceptions/network_exceptions.dart';
import 'package:medica/features/doctor/business_logic/search_doctor_event.dart';
import 'package:medica/features/doctor/business_logic/search_doctor_state.dart';
import 'package:medica/features/doctor/data/model/doctor.dart';

import 'package:medica/features/doctor/data/repository/search_doctor_repository.dart';

@injectable
class SearchDoctorBloc extends Bloc<SearchDoctorEvent, SearchDoctorState> {
  SearchDoctorBloc(
    this._doctorRepository,
  ) : super(const SearchDoctorState()) {
    on<SearchDoctorEvent>((event, emit) {
      event.when(
          started: () {},
          searchDoctors: _onSearch,
          sortDoctors: _onSort,
          filterDoctorsBySpecializations: _onFilterBySpecialization,
          loadDoctor: _onLoad);
    });
  }

  final SearchDoctorRepository _doctorRepository;

  Future<void> _onLoad() async {
    emit(state.copyWith(status: DoctorStatus.loading));
    final result = await _doctorRepository.searchDoctor(
        specialization: state.selectedSpecializations,
        searchQuery: state.searchQuery);
    result.when(
      success: (data) => emit(state.copyWith(doctors: data!,status: DoctorStatus.success)),
      failure: (networkException) => emit(state.copyWith(
          status: DoctorStatus.failure,
          errorMessage: NetworkExceptions.getErrorMessage(networkException))),
    );
  }

  void _onFilterBySpecialization(String? selectedSpecializations) {
    emit(state.copyWith(selectedSpecializations: selectedSpecializations??''));
    if(state.searchQuery.isEmpty)return;
    add(const SearchDoctorEvent.loadDoctor());
  }

  void _onSort(isAscending) {

    final  sortedDoctors = List.of(state.doctors);
    sortedDoctors.sort(
          (a, b) => isAscending
          ? a.basicInfo.firstname.compareTo(b.basicInfo.firstname)
          : b.basicInfo.firstname.compareTo(a.basicInfo.firstname),
    );

    emit(state.copyWith(doctors: sortedDoctors, isAscending: isAscending));
  }

  Future<void> _onSearch(query) async {
    emit(state.copyWith(searchQuery: query));
    if (query.isEmpty) return;
    add(const SearchDoctorEvent.loadDoctor());
  }
}