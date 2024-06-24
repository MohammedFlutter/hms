import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medica/core/injection/init_di.dart';
import 'package:medica/core/widget/main_wrapper.dart';
import 'package:medica/features/appointment/ui/page/create_appointment.dart';
import 'package:medica/features/doctor/data/model/doctor.dart';
import 'package:medica/features/doctor/ui/page/doctor_details_page.dart';
import 'package:medica/features/doctor/ui/page/search_doctor_page.dart';
import 'package:medica/features/home/ui/home_page.dart';
import 'package:medica/features/onboarding/onboarding_cubit.dart';
import 'package:medica/features/onboarding/onboarding_repo.dart';
import 'package:medica/features/onboarding/ui/pages/onboarding_page.dart';
import 'package:medica/features/profile/ui/page/profile_page.dart';
import 'package:medica/features/registration/business_logic/sign_in/sign_in_cubit.dart';
import 'package:medica/features/registration/data/repository/auth_repository.dart';
import 'package:medica/features/registration/ui/pages/fill_profile_page.dart';
import 'package:medica/features/registration/ui/pages/forget_password_page.dart';
import 'package:medica/features/registration/ui/pages/reset_password_page.dart';
import 'package:medica/features/registration/ui/pages/sign_in_page.dart';
import 'package:medica/features/registration/ui/pages/sign_up_page.dart';
import 'package:medica/features/registration/ui/pages/verify_code_page.dart';

final router = GoRouter(
  initialLocation: '/${Routes.signIn}',
  // initialLocation: '/',
  navigatorKey: getIt<GlobalKey<NavigatorState>>(),
  redirect: (context, state) async {
    final isFirstTimeLaunch = getIt<OnboardingRepo>().isFirstTimeLaunch();
    if (isFirstTimeLaunch) {
      return '/${Routes.onboarding}'; // Pass current location
    }
    final isLoggedIn = await getIt<AuthRepository>().isLoggedIn();
    if (isLoggedIn && state.matchedLocation == '/${Routes.signIn}') {
      return '/'; // Pass current location
    }
    return null;
  },
  routes: [
    GoRoute(
        path: '/${Routes.signUp}',
        name: Routes.signUp,
        builder: (context, state) => const SignUpPage(),
        routes: [
          GoRoute(
            path: Routes.fillProfile,
            name: Routes.fillProfile,
            builder: (context, state) => const FillProfilePage(),
          ),
        ]),
    GoRoute(
      path: '/${Routes.signIn}',
      name: Routes.signIn,
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<SignInCubit>(),
        child: const SignInPage(),
      ),
      routes: [
        GoRoute(
            path: Routes.forgetPassword,
            name: Routes.forgetPassword,
            builder: (context, state) => const ForgetPasswordPage(),
            routes: [
              GoRoute(
                path: Routes.resetPassword,
                name: Routes.resetPassword,
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
      path: '/${Routes.verifyCode}',
      name: Routes.verifyCode,
      builder: (context, state) {
        // state.
        var params = state.extra as Map<String, dynamic>;

        var previousPage = switch (params[CustomRouteParameter.previousPage]) {
          Routes.forgetPassword => PreviousRoute.forgotPasswordVerification,
          Routes.signUp => PreviousRoute.accountActivationVerification,
          _ => throw Exception('invalid route'),
        };

        return VerifyCodePage(
          previousRoute: previousPage,
          email: params[CustomRouteParameter.email]!,
        );
      },
    ),
    GoRoute(
        path: '/${Routes.onboarding}',
        name: Routes.onboarding,
        builder: (context, state) => BlocProvider(
              create: (context) => getIt<OnboardingCubit>(),
              child: const OnboardingPage(),
            )),
    StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            MainWrapper(navigationShell: navigationShell),
        branches: <StatefulShellBranch>[
          StatefulShellBranch(navigatorKey: _NavigationKeys().homeKey, routes: [
            GoRoute(
              path: '/',
              name: Routes.home,
              builder: (BuildContext context, GoRouterState state) {
                return HomePage();
              },
            ),
          ]),
          StatefulShellBranch(
              navigatorKey: _NavigationKeys().searchDoctorKey,
              routes: [
                GoRoute(
                    path: '/${Routes.search}',
                    name: Routes.search,
                    builder: (BuildContext context, GoRouterState state) {
                      return const SearchDoctorPage();
                    },
                    routes: [
                      GoRoute(
                          path: Routes.doctorDetails,
                          name: Routes.doctorDetails,
                          builder: (BuildContext context, GoRouterState state) {
                            return DoctorDetailsPage(
                                doctorDetails: state.extra as DoctorDetails);
                          },
                          routes: [
                            GoRoute(
                              path: Routes.createAppointment,
                              name: Routes.createAppointment,
                              builder: (context, state) {
                                return CreateAppointmentPage(
                                  doctor: state.extra as DoctorDetails,
                                );
                              },
                            )
                          ]),
                    ]),
              ]),
          StatefulShellBranch(
              navigatorKey: _NavigationKeys().appointmentKey,
              routes: [
                GoRoute(
                  path: '/${Routes.appointment}',
                  name: Routes.appointment,
                  builder: (BuildContext context, GoRouterState state) {
                    return const TestPage(
                      title: Routes.appointment,
                    );
                  },
                ),
              ]),
          StatefulShellBranch(
              navigatorKey: _NavigationKeys().labResults,
              routes: [
                GoRoute(
                  path: '/${Routes.labResults}',
                  name: Routes.labResults,
                  builder: (BuildContext context, GoRouterState state) {
                    return const TestPage(
                      title: Routes.labResults,
                    );
                  },
                ),
              ]),
          StatefulShellBranch(
              navigatorKey: _NavigationKeys().prescriptionKey,
              routes: [
                GoRoute(
                  path: '/${Routes.prescription}',
                  name: Routes.prescription,
                  builder: (BuildContext context, GoRouterState state) {
                    return const TestPage(
                      title: Routes.prescription,
                    );
                  },
                ),
              ]),
          StatefulShellBranch(
              navigatorKey: _NavigationKeys().patientKey,
              routes: [
                GoRoute(
                  path: '/${Routes.patients}',
                  name: Routes.patients,
                  builder: (BuildContext context, GoRouterState state) {
                    return const TestPage(
                      title: Routes.patients,
                    );
                  },
                ),
              ]),
          StatefulShellBranch(
              navigatorKey: _NavigationKeys().profileKey,
              routes: [
                GoRoute(
                  path: '/${Routes.profile}',
                  name: Routes.profile,
                  builder: (BuildContext context, GoRouterState state) {
                    return const ProfilePage();
                  },
                ),
              ]),
        ]),
  ],
);

class TestPage extends StatelessWidget {
  final String title;

  const TestPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Center(
        child: Text('test page'),
      ),
    );
  }
}

class Routes {
  static const String signUp = 'sign-up';
  static const String signIn = 'sign-in';
  static const String fillProfile = 'fill-profile';
  static const String forgetPassword = 'forget-password';
  static const String resetPassword = 'reset-password';
  static const String verifyCode = 'verify-code';
  static const String onboarding = 'onboarding';
  static const String profile = 'profile';
  static const String home = 'home';
  static const String search = 'search';
  static const String labResults = 'lab-results';
  static const String prescription = 'prescription';
  static const String appointment = 'appointment';
  static const String patients = 'patients';
  static const String doctorDetails = 'doctor-details';
  static const String createAppointment = 'create-appointment';
}

class CustomRouteParameter {
  static const String email = 'email';
  static const String previousPage = 'previousPage';
}

class _NavigationKeys {
  final homeKey = GlobalKey<NavigatorState>();
  final searchDoctorKey = GlobalKey<NavigatorState>();
  final appointmentKey = GlobalKey<NavigatorState>();
  final profileKey = GlobalKey<NavigatorState>();
  final labResults = GlobalKey<NavigatorState>();
  final doctorDetailsKey = GlobalKey<NavigatorState>();
  final patientKey = GlobalKey<NavigatorState>();
  final prescriptionKey = GlobalKey<NavigatorState>();
}
