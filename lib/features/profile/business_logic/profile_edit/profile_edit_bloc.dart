// profile_edit_event.dart

// profile_edit_state.dart

// profile_edit_bloc.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:medica/core/exceptions/network_exceptions.dart';
import 'package:medica/features/profile/business_logic/profile_edit/profile_edit_event.dart';
import 'package:medica/features/profile/business_logic/profile_edit/profile_edit_state.dart';

import 'package:medica/features/profile/data/repository/profile_repository.dart';

@injectable
class ProfileEditBloc extends Bloc<ProfileEditEvent, ProfileEditState> {
  final ProfileRepository _profileRepository;

  ProfileEditBloc(this._profileRepository) : super(const ProfileEditState.initial()) {
    on<UpdateProfile>((event, emit) async {
      emit(const ProfileEditState.loading());

      final result = await _profileRepository.updateProfile(event.profile);
      result.when(
          success: (profile) => emit(const ProfileEditState.success()),
          failure: (error) => emit(
                ProfileEditState.failure((NetworkExceptions.getErrorMessage(error))),
              ));
    });
  }
}
