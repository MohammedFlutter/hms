import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medica/core/const/text_style.dart';
import 'package:medica/features/doctor/data/model/doctor.dart';
import 'package:medica/core/route.dart';

class DoctorDetailsPage extends StatelessWidget {
  final Doctor doctorDetails;

  const DoctorDetailsPage({super.key, required this.doctorDetails});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            '${doctorDetails.basicInfo.firstname} ${doctorDetails.basicInfo.lastname}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: SingleChildScrollView(child: Column(children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildSectionTitle('Basic Information'),
                      _buildDetailRow('Name',
                          '${doctorDetails.basicInfo.firstname} ${doctorDetails.basicInfo.lastname}'),
                      _buildDetailRow('Gender', doctorDetails.basicInfo.gender),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildSectionTitle('Professional Details'),
                      _buildDetailRow('Specialty',
                          doctorDetails.professionalDetails.specialty ?? ''),
                      _buildDetailRow('Experience',
                          doctorDetails.professionalDetails.experience ?? ''),
                      _buildDetailRow('Certifications',
                          doctorDetails.professionalDetails.certifications ?? ''),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildSectionTitle('Work of time'),
                      _buildDetailRow(
                          'Start from',
                          doctorDetails.professionalDetails.workStartTime
                              ?.trim()
                              .substring(0, 5) ??
                              ''),
                      _buildDetailRow(
                          'End at     ',
                          doctorDetails.professionalDetails.workEndTime
                              ?.trim()
                              .substring(0, 5) ??
                              ''),
                    ],
                  ),
                ),
              ),

            ],),)),
            const SizedBox(height: 8),

            // Contact Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: FilledButton(
                    onPressed: () {
                      context.goNamed(CustomRoutes.createAppointment,
                          extra: doctorDetails);
                    },
                    child: const Text('Book Appointment'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text('$label: ', style: CustomTextStyle.bodyLG),
          Text(
            value,
            style: CustomTextStyle.bodySRegular,
          ),
        ],
      ),
    );
  }
}
