import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medica/core/injection/init_di.dart';
import 'package:medica/onboarding/onboarding_cubit.dart';
import 'package:medica/onboarding/onboarding_repo.dart';
import 'package:medica/onboarding/ui/pages/onboarding_page.dart';
import 'package:medica/profile/ui/page/profile.dart';
import 'package:medica/registration/business_logic/sign_in/sign_in_cubit.dart';
import 'package:medica/registration/ui/pages/fill_profile_page.dart';
import 'package:medica/registration/ui/pages/forget_password_page.dart';
import 'package:medica/registration/ui/pages/reset_password_page.dart';
import 'package:medica/registration/ui/pages/sign_in_page.dart';
import 'package:medica/registration/ui/pages/sign_up_page.dart';
import 'package:medica/registration/ui/pages/verify_code_page.dart';

final router = GoRouter(
  initialLocation: '/${CustomRoute.signIn}',
  redirect: (context, state) {
    print(state.matchedLocation);
    // state
    final isFirstTimeLaunch = getIt<OnboardingRepo>().isFirstTimeLaunch();
    if (isFirstTimeLaunch && state.matchedLocation != '/onboarding') {
      return '/${CustomRoute.onboarding}'; // Pass current location
    }
    // if (isFirstTimeLaunch && state.matchedLocation != '/onboarding') {
    //   return  '/${CustomRoute.onboarding}'; // Pass current location
    // }

    return null;
  },
  routes: [
    GoRoute(
        path: '/${CustomRoute.signUp}',
        name: CustomRoute.signUp,
        builder: (context, state) => const SignUpPage(),
        routes: [
          GoRoute(
            path: CustomRoute.fillProfile,
            name: CustomRoute.fillProfile,
            builder: (context, state) => const FillProfilePage(),
          ),
        ]),
    GoRoute(
      path: '/${CustomRoute.signIn}',
      name: CustomRoute.signIn,
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<SignInCubit>(),
        child: const SignInPage(),
      ),
      routes: [
        GoRoute(
            path: CustomRoute.forgetPassword,
            name: CustomRoute.forgetPassword,
            builder: (context, state) => const ForgetPasswordPage(),
            routes: [
              GoRoute(
                path: CustomRoute.resetPassword,
                name: CustomRoute.resetPassword,
                builder: (context, state) {
                  return ResetPasswordPage(

                    email: state.extra as String,
                  );
                },
              ),
            ]),
      ],
    ),
    GoRoute(
      path: '/${CustomRoute.verifyCode}',
      name: CustomRoute.verifyCode,
      builder: (context, state) {
        // state.
        var params= state.extra as Map<String,dynamic>;

        var previousPage =
            switch (params[CustomRouteParameter.previousPage]) {
          CustomRoute.forgetPassword =>
            PreviousRoute.forgotPasswordVerification,
          CustomRoute.signUp => PreviousRoute.accountActivationVerification,
          _ => throw Exception('invalid route'),
        };

        return VerifyCodePage(
          previousRoute: previousPage,
          email: params[CustomRouteParameter.email]!,
        );
      },
    ),
    GoRoute(
        path: '/${CustomRoute.onboarding}',
        name: CustomRoute.onboarding,
        builder: (context, state) => BlocProvider(
              create: (context) => getIt<OnboardingCubit>(),
              child: const OnboardingPage(),
            )),
    GoRoute(
        path: '/${CustomRoute.profile}',
        name: CustomRoute.profile,
        builder: (context, state) => const ProfilePage()),
  ],
);

class CustomRoute {
  static const String signUp = 'sign_up';
  static const String signIn = 'sign_in';
  static const String fillProfile = 'fill_profile';
  static const String forgetPassword = 'forget_password';
  static const String resetPassword = 'reset_password';
  static const String verifyCode = 'verify_code';
  static const String onboarding = 'onboarding';
  static const String profile = 'profile';
}

class CustomRouteParameter {
  static const String email = 'email';
  static const String previousPage = 'previousPage';
}
