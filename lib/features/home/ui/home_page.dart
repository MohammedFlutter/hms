import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:medica/core/injection/api_module.dart';
import 'package:medica/core/injection/init_di.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key}) {
    getIt<Dio>().interceptors.add(getIt<TokenInterceptor>());
    // getIt<AuthRepository>().refreshToken.then((token) {
    //   getIt<AuthRepository>().refreshAccessToken(token!).then((result) {
    //     result.when(
    //       success: (data) {
    //         print(data);
    //       },
    //       failure: (exceptions) {
    //         print(exceptions);
    //       },
    //     );
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('home Screen'),
      ),
    );
  }
}

// final root = SafeArea(child: Scaffold(appBar: AppBar(title: Text('Welcome #name'),), body:,));
