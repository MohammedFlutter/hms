import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:medica/core/injection/api_module.dart';
import 'package:medica/core/injection/init_di.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key}) {
    getIt<Dio>().interceptors.add(getIt<TokenInterceptor>());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome name'),
      ),
      body: const Center(
        child: Text('home Screen'),
      ),
    );
  }
}

// final root = SafeArea(child: Scaffold(appBar: AppBar(title: Text('Welcome #name'),), body:,));
