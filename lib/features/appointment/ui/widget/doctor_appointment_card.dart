import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:medica/core/const/text_style.dart';
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
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
          child: Row(
            children: [
              // CircleAvatar with first letter
              CircleAvatar(
                backgroundColor: randomColor,
                radius: 20.r, // Adjust size as needed
                child: Text(
                  doctorAppointment.patientName.substring(0, 1).toUpperCase(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(width: 12.w), // Add some spacing
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doctorAppointment.patientName,
                    style: CustomTextStyle.h3,
                  ),
                  Gap(4.h),
                  Text('Date: ${doctorAppointment.startTime}'),
                  Gap(4.h),
                  Text('Virtual: ${doctorAppointment.isVirtual}'),
                ],
              ),
                        const Spacer(),
              (doctorAppointment.isVirtual)
                  ? Row(
                      children: [
                        buildIcon(true, context),
                        Gap(4.w),
                        buildIcon(false, context),
                      ],
                    )
                  : const SizedBox()
            ],
          ),
        ),
      ),
    );
  }

  Widget buildIcon(bool isVideoCall, context) {
    return ZegoSendCallInvitationButton(
      invitees: [
        ZegoUIKitUser(
            id: doctorAppointment.patientId.toString(),
            name: doctorAppointment.patientName)
      ],
      isVideoCall: isVideoCall,
      icon: ButtonIcon(
          icon: Icon(
            isVideoCall ? Icons.video_call : Icons.phone,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          backgroundColor: Theme.of(context).colorScheme.primary),
      buttonSize: Size(40.w, 40.h),
      iconSize: Size(40.w, 40.h),
      margin: EdgeInsets.zero,
    );
  }
}
