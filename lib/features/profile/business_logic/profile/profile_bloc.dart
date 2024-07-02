import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:medica/core/exceptions/network_exceptions.dart';
import 'package:medica/features/profile/business_logic/profile/profile_event.dart';
import 'package:medica/features/profile/business_logic/profile/profile_state.dart';

import 'package:medica/features/profile/data/repository/profile_repository.dart';
import 'package:medica/features/registration/data/repository/auth_repository.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepository _profileRepository;
  final AuthRepository _authRepository;

  ProfileBloc(this._profileRepository, this._authRepository)
      : super(const ProfileState.initial()) {
    on<GetProfile>((event, emit) async {
      emit(const ProfileState.loading());
      final result = await _profileRepository.getProfile();
      result.when(
        success: (profile) => emit(ProfileState.success(profile!)),
        failure: (error) => emit(
            ProfileState.failure(NetworkExceptions.getErrorMessage(error))),
      );
    });
    on<Logout>((event, emit) async {
      final result = await _authRepository.logout();
      result.when(
        success: (_) => emit(const ProfileState.logoutSuccess()),
        failure: (error) => emit(
            ProfileState.failure(NetworkExceptions.getErrorMessage(error))),
      );
    });
  }
}
