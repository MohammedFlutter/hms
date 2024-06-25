import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:medica/core/exceptions/network_exceptions.dart';
import 'package:medica/features/patient/data/repository/patient_search_repository.dart';
import 'package:medica/features/patient/data/repository/patient_history_repository.dart';
import 'patient_search_event.dart';
import 'patient_search_state.dart';

@injectable
class PatientSearchBloc extends Bloc<PatientSearchEvent, PatientSearchState> {
  final PatientSearchRepository _patientSearchRepository;
  final PatientHistoryRepository _patientHistoryRepository;

  PatientSearchBloc(this._patientSearchRepository, this._patientHistoryRepository)
      : super(const PatientSearchState()) {
    on<SearchPatients>((event, emit) async {
      if(event.fullName.isEmpty)return;
      emit(state.copyWith(status: PatientSearchStatus.loading));
      final result =
          await _patientSearchRepository.searchPatients(event.fullName.trim());
      result.when(success: (patients) {
        emit(state.copyWith(
            status: PatientSearchStatus.searchLoaded, patients: patients ?? []));
      }, failure: (error) {
        emit(state.copyWith(
            status: PatientSearchStatus.failure,
            errorMessage: NetworkExceptions.getErrorMessage(error)));
      });
    });
    on<SortPatients>((event, emit) async {
      final sortedPatients = List.of(state.patients);
      sortedPatients.sort(
        (a, b) {
          var fullName1 = a.basicInfo.firstname + a.basicInfo.lastname;
          var fullName2 = b.basicInfo.firstname + b.basicInfo.lastname;
          return event.isAscending
              ? fullName1.compareTo(fullName2)
              : fullName2.compareTo(fullName1);
        },
      );

      emit(state.copyWith(
          patients: sortedPatients, isAscending: event.isAscending));
    });

    on<LoadPatientHistory>((event, emit) async {
      emit(state.copyWith(status: PatientSearchStatus.loading));
      final result =
      await _patientHistoryRepository.getPatientHistory(event.patientId);
      result.when(success: (patientHistory) {
        emit(state.copyWith(
            status: PatientSearchStatus.patientHistoryLoaded, patientHistory: patientHistory));
      }, failure: (error) {
        emit(state.copyWith(
            status: PatientSearchStatus.failure,
            errorMessage: NetworkExceptions.getErrorMessage(error)));
      });
    });
  }
}
