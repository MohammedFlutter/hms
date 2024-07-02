import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medica/core/injection/init_di.dart';
import 'package:medica/core/widget/main_wrapper.dart';
import 'package:medica/features/appointment/ui/page/create_appointment_page.dart';
import 'package:medica/features/appointment/ui/page/doctor_appointment_page.dart';
import 'package:medica/features/appointment/ui/page/patient_appointment_page.dart';
import 'package:medica/features/doctor/data/model/doctor.dart';
import 'package:medica/features/doctor/ui/page/doctor_details_page.dart';
import 'package:medica/features/doctor/ui/page/doctor_search_page.dart';
import 'package:medica/features/home/ui/page/home_doctor_page.dart';
import 'package:medica/features/home/ui/page/home_patient_page.dart';
import 'package:medica/features/onboarding/onboarding_cubit.dart';
import 'package:medica/features/onboarding/ui/pages/onboarding_page.dart';
import 'package:medica/features/patient/data/model/patient.dart';
import 'package:medica/features/patient/data/model/patient_history.dart';
import 'package:medica/features/patient/ui/page/Patient_search_page.dart';
import 'package:medica/features/patient/ui/page/patient_info_page.dart';
import 'package:medica/features/profile/ui/page/profile_page.dart';
import 'package:medica/features/registration/business_logic/sign_in/sign_in_cubit.dart';
import 'package:medica/features/profile/ui/page/fill_profile_page.dart';
import 'package:medica/features/registration/ui/pages/forget_password_page.dart';
import 'package:medica/features/registration/ui/pages/reset_password_page.dart';
import 'package:medica/features/registration/ui/pages/sign_in_page.dart';
import 'package:medica/features/registration/ui/pages/sign_up_page.dart';
import 'package:medica/features/registration/ui/pages/verify_code_page.dart';
import 'package:medica/features/splash/splash_screen.dart';

final router = GoRouter(
  initialLocation: '/${CustomRoutes.splash}',
  debugLogDiagnostics: true,
  navigatorKey: getIt<GlobalKey<NavigatorState>>(),
  routes: [
    GoRoute(
      path: '/${CustomRoutes.splash}',
      name: CustomRoutes.splash,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/${CustomRoutes.fillProfile}',
      name: CustomRoutes.fillProfile,
      builder: (context, state) => const EditProfilePage(),
    ),
    GoRoute(
      path: '/${CustomRoutes.signUp}',
      name: CustomRoutes.signUp,
      builder: (context, state) => const SignUpPage(),
    ),
    GoRoute(
      path: '/${CustomRoutes.signIn}',
      name: CustomRoutes.signIn,
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<SignInCubit>(),
        child: const SignInPage(),
      ),
      routes: [
        GoRoute(
            path: CustomRoutes.forgetPassword,
            name: CustomRoutes.forgetPassword,
            builder: (context, state) => const ForgetPasswordPage(),
            routes: [
              GoRoute(
                path: CustomRoutes.resetPassword,
                name: CustomRoutes.resetPassword,
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
      path: '/${CustomRoutes.verifyCode}',
      name: CustomRoutes.verifyCode,
      builder: (context, state) {
        // state.
        var params = state.extra as Map<String, dynamic>;

        var previousPage = switch (params[CustomRouteParameter.previousPage]) {
          CustomRoutes.forgetPassword =>
            PreviousRoute.forgotPasswordVerification,
          CustomRoutes.signUp => PreviousRoute.accountActivationVerification,
          _ => throw Exception('invalid route'),
        };

        return VerifyCodePage(
          previousRoute: previousPage,
          email: params[CustomRouteParameter.email]!,
        );
      },
    ),
    GoRoute(
        path: '/${CustomRoutes.onboarding}',
        name: CustomRoutes.onboarding,
        builder: (context, state) => BlocProvider(
              create: (context) => getIt<OnboardingCubit>(),
              child: const OnboardingPage(),
            )),
    StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            MainWrapper(navigationShell: navigationShell),
        branches: <StatefulShellBranch>[
          StatefulShellBranch(
              navigatorKey: _NavigationKeys().homePatientKey,
              routes: [
                GoRoute(
                  path: '/${CustomRoutes.homePatient}',
                  name: CustomRoutes.homePatient,
                  builder: (BuildContext context, GoRouterState state) {
                    return const HomePatientPage();
                  },
                ),
              ]),
          StatefulShellBranch(
              navigatorKey: _NavigationKeys().searchDoctorKey,
              routes: [
                GoRoute(
                    path: '/${CustomRoutes.searchDoctor}',
                    name: CustomRoutes.searchDoctor,
                    builder: (BuildContext context, GoRouterState state) {
                      return const DoctorSearchPage();
                    },
                    routes: [
                      GoRoute(
                          path: CustomRoutes.doctorDetails,
                          name: CustomRoutes.doctorDetails,
                          builder: (BuildContext context, GoRouterState state) {
                            return DoctorDetailsPage(
                                doctorDetails: state.extra as Doctor);
                          },
                          routes: [
                            GoRoute(
                              path: CustomRoutes.createAppointment,
                              name: CustomRoutes.createAppointment,
                              builder: (context, state) {
                                return CreateAppointmentPage(
                                  doctor: state.extra as Doctor,
                                );
                              },
                            )
                          ]),
                    ]),
              ]),
          StatefulShellBranch(
              navigatorKey: _NavigationKeys().doctorAppointmentKey,
              routes: [
                GoRoute(
                  path: '/${CustomRoutes.doctorAppointment}',
                  name: CustomRoutes.doctorAppointment,
                  builder: (BuildContext context, GoRouterState state) {
                    return const DoctorAppointmentPage();
                  },
                ),
              ]),
          StatefulShellBranch(
              navigatorKey: _NavigationKeys().patientAppointmentKey,
              routes: [
                GoRoute(
                  path: '/${CustomRoutes.patientAppointment}',
                  name: CustomRoutes.patientAppointment,
                  builder: (BuildContext context, GoRouterState state) {
                    return const PatientAppointmentPage();
                  },
                ),
              ]),
          StatefulShellBranch(
              navigatorKey: _NavigationKeys().prescriptionKey,
              routes: [
                GoRoute(
                  path: '/${CustomRoutes.prescription}',
                  name: CustomRoutes.prescription,
                  builder: (BuildContext context, GoRouterState state) {
                    return const TestPage(
                      title: CustomRoutes.prescription,
                    );
                  },
                ),
              ]),
          StatefulShellBranch(
              navigatorKey: _NavigationKeys().patientKey,
              routes: [
                GoRoute(
                    path: '/${CustomRoutes.searchPatients}',
                    name: CustomRoutes.searchPatients,
                    builder: (BuildContext context, GoRouterState state) {
                      return const PatientSearchPage();
                    },
                    routes: [
                      GoRoute(
                        path: CustomRoutes.patientInfo,
                        name: CustomRoutes.patientInfo,
                        builder: (BuildContext context, GoRouterState state) {
                          var states = state.extra as Map<String, dynamic>;
                          final patientHistory =
                              states[CustomRouteParameter.patientHistory]!
                                  as PatientHistory;
                          final patient =
                              states[CustomRouteParameter.patientInfo]
                                  as Patient;

                          return PatientInfoPage(
                              patientHistory: patientHistory, patient: patient);
                        },
                      ),
                    ]),
              ]),
          StatefulShellBranch(
              navigatorKey: _NavigationKeys().profileKey,
              routes: [
                GoRoute(
                  path: '/${CustomRoutes.profile}',
                  name: CustomRoutes.profile,
                  builder: (BuildContext context, GoRouterState state) {
                    return const ProfilePage();
                  },
                ),
              ]),
          StatefulShellBranch(
              navigatorKey: _NavigationKeys().homeDoctorKey,
              routes: [
                GoRoute(
                  path: '/${CustomRoutes.homeDoctor}',
                  name: CustomRoutes.homeDoctor,
                  builder: (BuildContext context, GoRouterState state) {
                    return const HomeDoctorPage();
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

class CustomRoutes {
  static const String splash = 'splash';
  static const String signUp = 'sign-up';
  static const String signIn = 'sign-in';
  static const String fillProfile = 'fill-profile';
  static const String forgetPassword = 'forget-password';
  static const String resetPassword = 'reset-password';
  static const String verifyCode = 'verify-code';
  static const String onboarding = 'onboarding';
  static const String profile = 'profile';
  static const String homeDoctor = 'home-doctor';
  static const String homePatient = 'home-patient';
  static const String searchDoctor = 'search-doctor';
  static const String labResults = 'lab-results';
  static const String prescription = 'prescription';
  static const String doctorAppointment = 'doctor-appointment';
  static const String patientAppointment = 'patient-appointment';
  static const String searchPatients = 'search-patients';
  static const String patientInfo = 'patientHistory';
  static const String doctorDetails = 'doctor-details';
  static const String createAppointment = 'create-appointment';
}

class CustomRouteParameter {
  static const String email = 'email';
  static const String previousPage = 'previousPage';
  static const String patientInfo = 'patientInfo';
  static const String patientHistory = 'patientHistory';
}

class _NavigationKeys {
  final homePatientKey = GlobalKey<NavigatorState>();
  final homeDoctorKey = GlobalKey<NavigatorState>();
  final searchDoctorKey = GlobalKey<NavigatorState>();
  final doctorAppointmentKey = GlobalKey<NavigatorState>();
  final profileKey = GlobalKey<NavigatorState>();
  final patientAppointmentKey = GlobalKey<NavigatorState>();
  final doctorDetailsKey = GlobalKey<NavigatorState>();
  final patientKey = GlobalKey<NavigatorState>();
  final prescriptionKey = GlobalKey<NavigatorState>();
}
