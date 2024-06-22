import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/localization/l10n.dart';
import 'package:medica/core/injection/init_di.config.dart';
import 'package:medica/core/injection/init_di.dart';
import 'package:medica/core/route.dart';
import 'package:medica/core/theme/custom_scheme_color.dart';
import 'package:medica/core/theme/theme_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medica/features/doctor/business_logic/search_doctor_bloc.dart';
import 'package:medica/features/registration/business_logic/forget_password/forget_password_cubit.dart';
import 'package:medica/features/registration/business_logic/reset_password/reset_password_cubit.dart';
import 'package:medica/features/registration/business_logic/sign_in/sign_in_cubit.dart';
import 'package:medica/features/registration/business_logic/sign_up/sign_up_cubit.dart';
import 'package:medica/features/registration/business_logic/verify_code/verify_code_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await getIt.init();
  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (_) => getIt<SignUpCubit>()),
    BlocProvider(create: (_) => getIt<SignInCubit>()),
    BlocProvider(create: (_) => getIt<ForgetPasswordCubit>()),
    BlocProvider(create: (_) => getIt<VerifyCodeCubit>()),
    BlocProvider(create: (_) => getIt<ResetPasswordCubit>()),
    BlocProvider(create: (_) => getIt<SearchDoctorBloc>()),

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
            // locale: const Locale('ar'),
            localizationsDelegates: const [
              FormBuilderLocalizations.delegate,
              ...AppLocalizations.localizationsDelegates
            ],
            supportedLocales: AppLocalizations.supportedLocales,
            routerConfig: router,
            // routerDelegate: router.routerDelegate,

          );
        });
  }
}
