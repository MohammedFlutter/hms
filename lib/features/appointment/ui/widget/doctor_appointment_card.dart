import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:medica/features/appointment/business_logic/DTO/doctor_appointment_dto.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class DoctorAppointmentCard extends StatelessWidget {
  const DoctorAppointmentCard({
    super.key,
    required this.doctorAppointment,
  });

  final DoctorAppointmentDto doctorAppointment;

  // final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    final randomColor = Colors.primaries[
        doctorAppointment.patientName.hashCode % Colors.primaries.length];

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
                  doctorAppointment.patientName.substring(0, 1).toUpperCase(),
                  style: TextStyle(
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
                    doctorAppointment.patientName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const Gap(4),
                  Text('Date: ${doctorAppointment.startTime}'),
                  const Gap(4),
                  Text('Virtual: ${doctorAppointment.isVirtual}'),
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
            id: doctorAppointment.patientId.toString(),
            name: doctorAppointment.patientName)
      ],
      isVideoCall: isVideoCall,
      buttonSize: const Size(40, 40),
      iconSize: const Size(40, 40),
      margin: EdgeInsets.zero,
    );
  }
}
