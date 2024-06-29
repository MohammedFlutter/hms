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
    final randomColor = Colors.primaries[patient.basicInfo.firstname.hashCode % Colors.primaries.length];

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
        side: BorderSide(color: Theme.of(context).dividerColor,width: .5),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: randomColor,
          child: Text(
            patient.basicInfo.firstname.substring(0, 1).toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        title: Text('${patient.basicInfo.firstname} ${patient.basicInfo.lastname}'),
        onTap: () {
          context
              .read<PatientSearchBloc>()
              .add(LoadPatientHistory(patient.id));
        },
      ),
    );
  }
}
