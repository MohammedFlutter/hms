import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medica/core/route.dart';
import 'package:medica/features/splash/business_logic/splash_bloc.dart';
import 'package:medica/features/splash/business_logic/splash_state.dart';

import 'business_logic/splash_event.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SplashBloc>(context).add(const SplashInitial());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) {
        switch(state.status){

          case SplashStatus.initial:
          case SplashStatus.loading:
          break;
          case SplashStatus.logIn:
              context.goNamed(CustomRoutes.home);
              break;
          case SplashStatus.logOut:
            context.goNamed(CustomRoutes.signIn);
            break;
          case SplashStatus.onboarding:
            context.goNamed(CustomRoutes.onboarding);
            break;        }
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
