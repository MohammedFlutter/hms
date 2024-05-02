import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:medica/onboarding/onboarding_repo.dart';

part 'onboarding_state.dart';

@injectable
class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit(this._onboardingRepo) : super(OnboardingInitial());
  final OnboardingRepo _onboardingRepo;

  void onGetStarted() {
    _onboardingRepo.launched();
  }
}
