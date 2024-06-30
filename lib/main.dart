import 'dart:async';
import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/localization/l10n.dart';
import 'package:medica/core/injection/init_di.config.dart';
import 'package:medica/core/injection/init_di.dart';
import 'package:medica/core/route.dart';
import 'package:medica/core/theme/custom_scheme_color.dart';
import 'package:medica/core/theme/theme_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medica/features/appointment/business_logic/create_appointment/appointment_bloc.dart';
import 'package:medica/features/appointment/business_logic/doctor_appointment/doctor_appointment_bloc.dart';
import 'package:medica/features/appointment/business_logic/patient_appointment/patient_appointment_bloc.dart';
import 'package:medica/features/doctor/business_logic/doctor_search_bloc.dart';
import 'package:medica/features/home/business_logic/home_doctor/home_doctor_bloc.dart';
import 'package:medica/features/home/business_logic/home_patient/home_patient_bloc.dart';
import 'package:medica/features/patient/business_logic/patient_search_bloc.dart';
import 'package:medica/features/registration/business_logic/forget_password/forget_password_cubit.dart';
import 'package:medica/features/registration/business_logic/reset_password/reset_password_cubit.dart';
import 'package:medica/features/registration/business_logic/sign_in/sign_in_cubit.dart';
import 'package:medica/features/registration/business_logic/sign_up/sign_up_cubit.dart';
import 'package:medica/features/registration/business_logic/verify_code/verify_code_cubit.dart';
import 'package:medica/features/splash/business_logic/splash_bloc.dart';
import 'package:medica/firebase_options.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'package:zego_uikit_signaling_plugin/zego_uikit_signaling_plugin.dart';
import 'package:zego_zpns/zego_zpns.dart';

import 'features/profile/business_logic/profile_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await getIt.init();
  await zegoInit();
  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (_) => getIt<SplashBloc>()),
    BlocProvider(create: (_) => getIt<SignUpCubit>()),
    BlocProvider(create: (_) => getIt<SignInCubit>()),
    BlocProvider(create: (_) => getIt<ForgetPasswordCubit>()),
    BlocProvider(create: (_) => getIt<VerifyCodeCubit>()),
    BlocProvider(create: (_) => getIt<ResetPasswordCubit>()),
    BlocProvider(create: (_) => getIt<HomePatientBloc>()),
    BlocProvider(create: (_) => getIt<HomeDoctorBloc>()),
    BlocProvider(create: (_) => getIt<DoctorSearchBloc>()),
    BlocProvider(create: (_) => getIt<PatientSearchBloc>()),
    BlocProvider(create: (_) => getIt<AppointmentBloc>()),
    BlocProvider(create: (_) => getIt<ProfileBloc>()),
    BlocProvider(create: (_) => getIt<PatientAppointmentBloc>()),
    BlocProvider(create: (_) => getIt<DoctorAppointmentBloc>()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(411, 811),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: ThemeData().create(CustomSchemeColor().lightColorScheme),
            darkTheme: ThemeData().create(CustomSchemeColor().darkColorScheme),
            // themeMode: ThemeMode.dark,
            // locale: const Locale('ar'),
            localizationsDelegates: const [
              FormBuilderLocalizations.delegate,
              ...AppLocalizations.localizationsDelegates
            ],
            supportedLocales: AppLocalizations.supportedLocales,
            routerConfig: router,
          );
        });
  }
}

Future<void> zegoInit() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  ZPNsConfig zpnsConfig = ZPNsConfig();
  zpnsConfig.enableFCMPush = true;
  ZPNs.setPushConfig(zpnsConfig);
  ZPNs.getInstance()
      .registerPush(iOSEnvironment: ZPNsIOSEnvironment.Automatic)
      .catchError((onError) {
    if (onError is PlatformException) {
      log(onError.message ?? '');
    }
  });

  ZegoUIKitPrebuiltCallInvitationService()
      .setNavigatorKey(getIt<GlobalKey<NavigatorState>>());

  ZegoUIKit().initLog().then((value) {
    ZegoUIKitPrebuiltCallInvitationService().useSystemCallingUI(
      [ZegoUIKitSignalingPlugin()],
    );
  });
}
