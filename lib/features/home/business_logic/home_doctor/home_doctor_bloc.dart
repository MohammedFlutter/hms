import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:medica/core/exceptions/network_exceptions.dart';
import 'package:medica/features/home/business_logic/home_doctor/home_doctor_event.dart';
import 'package:medica/features/home/business_logic/home_doctor/home_doctor_state.dart';
import 'package:medica/features/profile/data/repository/profile_repository.dart';

@injectable
class HomeDoctorBloc extends Bloc<HomeDoctorEvent, HomeDoctorState> {
  final ProfileRepository _profileRepository;

  HomeDoctorBloc(this._profileRepository) : super(const HomeDoctorState()) {
    on<Started>((event, emit) async {
      // emit(const ProfileState.loading());
      final result = await _profileRepository.getProfile();
      result.when(
        success: (profile) => emit(state.copyWith(
            status: HomeDoctorStatus.success,
            firstname: profile?.firstname ?? '')),
        failure: (error) => emit(state.copyWith(
            status: HomeDoctorStatus.failure,
            errorMessage: NetworkExceptions.getErrorMessage(error))),
      );
    });
  }
}
