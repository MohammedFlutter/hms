import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medica/features/home/business_logic/home_patient/home_patient_bloc.dart';
import 'package:medica/features/home/business_logic/home_patient/home_patient_state.dart';
import 'package:medica/features/home/business_logic/home_patient/home_patient_event.dart';

class HomePatientPage extends StatefulWidget {
  const HomePatientPage({super.key});

  @override
  State<HomePatientPage> createState() => _HomePatientPageState();
}

class _HomePatientPageState extends State<HomePatientPage> {

  @override
  void initState() {
    super.initState();
    BlocProvider.of<HomePatientBloc>(context).add(const Started());
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePatientBloc, HomePatientState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Welcome ${state.firstname}'),
          ),
          body: const SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Upcoming Appointments

                // Display upcoming appointments using a ListView or similar

                // Recent Medical Records
                // ...

                // Health Recommendations
                // ...

                // Search and Navigation
                // ...
              ],
            ),
          ),
        );
      },
    );
  }
}

// final root = SafeArea(child: Scaffold(appBar: AppBar(title: Text('Welcome #name'),), body:,));
