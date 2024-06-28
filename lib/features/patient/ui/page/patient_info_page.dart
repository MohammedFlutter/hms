import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:medica/core/const/text_style.dart';
import 'package:medica/features/patient/data/model/patient.dart';
import 'package:medica/features/patient/data/model/patient_history.dart';

class PatientInfoPage extends StatelessWidget {
  const PatientInfoPage(
      {super.key, required this.patient, required this.patientHistory});

  final Patient patient;
  final PatientHistory patientHistory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            '${patient.basicInfo.firstname} ${patient.basicInfo.lastname}'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSectionTitle('Basic Information'),
                    _buildDetailRow('Gender', patient.basicInfo.gender ?? ''),
                    _buildDetailRow('Age',
                        _calculateAge(patient.basicInfo.dob ?? '').toString()),
                    _buildDetailRow('Marital Status ',
                        (patient.extraInfo?.maritalStatus ?? '')),
                    _buildDetailRow(
                        'Nationality ', (patient.extraInfo?.nationality ?? '')),
                    _buildDetailRow(
                        'Blood Type ', (patient.extraInfo?.bloodType ?? '')),
                  ],
                ),
              ),
            ),
            const Gap(16),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSectionTitle('Patient History'),
                    const Gap(16),
                    _buildSection('Physical Examination', [
                      _buildCheckTile(
                          'Diuresis', patientHistory.hasPhysDiuresis),
                      _buildCheckTile('Diet', patientHistory.hasPhysDiet),
                      _buildCheckTile('Drugs', patientHistory.hasPhysDrugs),
                      _buildCheckTile('Alcohol', patientHistory.hasPhysAlcohol),
                      _buildCheckTile('Alvo', patientHistory.hasPhysAlvo),
                      _buildCheckTile('Smoke', patientHistory.hasPhysSmoke),
                      _buildCheckTile('Period', patientHistory.hasPhysPeriod),
                      _buildCheckTile(
                          'Pregnancies', patientHistory.hasPhysPregnancies),
                    ]),
                    _buildSection('Past History', [
                      _buildCheckTile(
                          'Cardiovascular', patientHistory.hasPastCardio),
                      _buildCheckTile('Cancer', patientHistory.hasPastCancer),
                      _buildCheckTile(
                          'Hypertension', patientHistory.hasPastHyp),
                      _buildCheckTile('Nothing', patientHistory.hasPastNothing),
                      // Assuming this is a valid field
                      _buildCheckTile(
                          'Infection', patientHistory.hasPastInfect),
                      _buildCheckTile('Orthopedic', patientHistory.hasPastOrto),
                      _buildCheckTile(
                          'Drug Addiction', patientHistory.hasPastDrugAdd),
                      _buildCheckTile('Endocrine', patientHistory.hasPastEndo),
                      _buildCheckTile(
                          'Respiratory', patientHistory.hasPastResp),
                    ]),
                    _buildSection('Family History', [
                      _buildCheckTile(
                          'Cardiovascular', patientHistory.hasFamCardio),
                      _buildCheckTile('Cancer', patientHistory.hasFamCancer),
                      _buildCheckTile('Hypertension', patientHistory.hasFamHyp),
                      _buildCheckTile('Nothing', patientHistory.hasFamNothing),
                      _buildCheckTile('Infection', patientHistory.hasFamInfect),
                      _buildCheckTile('Orthopedic', patientHistory.hasFamOrto),
                      _buildCheckTile(
                          'Drug Addiction', patientHistory.hasFamDrugAdd),
                      _buildCheckTile('Endocrine', patientHistory.hasFamEndo),
                      _buildCheckTile('Respiratory', patientHistory.hasFamResp),
                    ]),
                    const Gap(12),
                    _buildSection('Other', [
                      _buildDetailRow('Past Notes', patientHistory.pastNotes),
                      _buildDetailRow(
                          'Family Notes', patientHistory.familyNotes),
                      _buildDetailRow('Allergies', patientHistory.allergies),
                      _buildDetailRow(
                          'Usual Medications', patientHistory.usualMedic),
                      _buildDetailRow('Surgeries', patientHistory.surgeries),
                      _buildDetailRow(
                          'Additional Notes', patientHistory.additionalNote),
                      _buildDetailRow('Notes', patientHistory.notes),
                    ]),
                  ],
                ),
              ),
            ),
            const Gap(40)
          ],
        ),
      ),
    );
  }

  Widget _buildCheckTile(String title, bool value) {
    return CheckboxListTile(
      title: Text(title),
      value: value,
      onChanged: null,
    );
  }

  Widget _buildSection(String title, List<Widget> children) {
    return ExpansionTile(
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      expandedAlignment: Alignment.centerLeft,
      childrenPadding: const EdgeInsets.symmetric(vertical: 12),
      children: children,
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
      padding: const EdgeInsets.symmetric(vertical: 12.0),
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

  int _calculateAge(String birthDateString) {
    DateTime? birthDate = DateFormat('yyyy-MM-dd').tryParse(birthDateString);
    if (birthDate == null) {
      return -1;
    }
    DateTime currentDate = DateTime.now();

    int age = currentDate.year - birthDate.year;
    if (currentDate.month < birthDate.month ||
        (currentDate.month == birthDate.month &&
            currentDate.day < birthDate.day)) {
      age--;
    }
    return age;
  }
}
