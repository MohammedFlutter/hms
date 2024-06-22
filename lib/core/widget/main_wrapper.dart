
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medica/core/enums/role.dart';
import 'package:medica/core/injection/init_di.dart';
import 'package:medica/core/widget/custom_bottom_navigation.dart';
import 'package:medica/features/registration/data/repository/auth_repository.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  Role? _role;

  @override
  void initState() {
    super.initState();
    _fetchRole();
  }

  Future<void> _fetchRole() async {
    final role = await getIt<AuthRepository>().role();
    setState(() {
      _role = role;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: _role != null
          ? CustomBottomNavigationBar(
        navigationDestinations: _role == Role.patient
            ? patientDestinations
            : doctorDestinations,
        navigationShell: widget.navigationShell,
      )
          : null, // or a loading indicator while fetching the role
    );
  }
}
