import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:medica/core/exceptions/network_exceptions.dart';
import 'package:medica/features/home/business_logic/home_patient/home_patient_event.dart';
import 'package:medica/features/home/business_logic/home_patient/home_patient_state.dart';
import 'package:medica/features/profile/data/repository/profile_repository.dart';

@injectable
class HomePatientBloc extends Bloc<HomePatientEvent, HomePatientState> {
  final ProfileRepository _profileRepository;

  HomePatientBloc(this._profileRepository) : super(const HomePatientState()) {
    on<Started>((event, emit) async {
      // emit(const ProfileState.loading());
      final result = await _profileRepository.getProfile();
      result.when(
        success: (profile) => emit(state.copyWith(
            status: HomePatientStatus.success,
            firstname: profile?.firstname ?? '')),
        failure: (error) => emit(state.copyWith(
            status: HomePatientStatus.failure,
            errorMessage: NetworkExceptions.getErrorMessage(error))),
      );
    });
  }
}
