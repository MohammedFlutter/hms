import 'package:flutter/material.dart';
import 'package:medica/features/doctor/data/model/doctor.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({
    super.key,
    required this.doctor,
  });

  final DoctorDetails doctor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('${doctor.basicInfo.firstname} ${doctor.basicInfo.lastname}'),
      subtitle: Text(doctor.professionalDetails.specialty ?? ''),
    );
  }
}
