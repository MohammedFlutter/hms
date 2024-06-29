import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:medica/features/appointment/business_logic/DTO/patient_appointment_dto.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class PatientAppointmentCard extends StatelessWidget {
  const PatientAppointmentCard({
    super.key,
    required this.patientAppointment,
  });

  final PatientAppointmentDto patientAppointment;

  // final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    final randomColor = Colors.primaries[
        patientAppointment.doctorName.hashCode % Colors.primaries.length];

    return InkWell(
      onTap: () {},
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            children: [
              // CircleAvatar with first letter
              CircleAvatar(
                backgroundColor: randomColor,
                radius: 20, // Adjust size as needed
                child: Text(
                  patientAppointment.doctorName.substring(0, 1).toUpperCase(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(width: 12), // Add some spacing
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    patientAppointment.doctorName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const Gap(4),
                  Text('Date: ${patientAppointment.startTime}'),
                  const Gap(4),
                  Text('Virtual: ${patientAppointment.isVirtual}'),
                ],
              ),
              const Spacer(),
              buildIcon(true),
              const Gap(4),
              buildIcon(false),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildIcon(bool isVideoCall) {
    return ZegoSendCallInvitationButton(
      invitees: [
        ZegoUIKitUser(
            id: patientAppointment.doctorId.toString(),
            name: patientAppointment.doctorName)
      ],
      isVideoCall: isVideoCall,
      buttonSize: const Size(40, 40),
      iconSize: const Size(40, 40),
      margin: EdgeInsets.zero,
    );
  }
}
