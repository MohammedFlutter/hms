import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medica/features/patient/business_logic/patient_search_bloc.dart';
import 'package:medica/features/patient/business_logic/patient_search_event.dart';
import 'package:medica/features/patient/data/model/patient.dart';

class PatientCard extends StatelessWidget {
  const PatientCard({
    super.key,
    required this.patient,
  });

  final Patient patient;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: BorderSide(color: Theme.of(context).dividerColor)),
      child: ListTile(
          title: Text(
              '${patient.basicInfo.firstname} ${patient.basicInfo.lastname}'),
          onTap: () {
            context
                .read<PatientSearchBloc>()
                .add(LoadPatientHistory(patient.id));
          }),
    );
  }
}
