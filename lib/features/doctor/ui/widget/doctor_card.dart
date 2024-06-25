import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medica/core/route.dart';
import 'package:medica/features/doctor/data/model/doctor.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({
    super.key,
    required this.doctor,
  });

  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: BorderSide(color: Theme.of(context).dividerColor)),
      child: ListTile(
        title:
            Text('${doctor.basicInfo.firstname} ${doctor.basicInfo.lastname}'),
        subtitle: Text(doctor.professionalDetails.specialty ?? ''),
        onTap: () => context.pushNamed(CustomRoutes.doctorDetails,extra: doctor),
      ),
    );
  }
}
