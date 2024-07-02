import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:medica/core/const/text_style.dart';
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
    return InkWell(
        onTap: () {},
        child: Card(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
            child: Row(
              children: [
                Column(
                  // Use a Column to arrange content vertically
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      patientAppointment.doctorName,
                      style: CustomTextStyle.h3,

                    ),
                     Gap(4.h),
                    Text('Date: ${patientAppointment.startTime}'),
                     Gap(4.h),
                    Text('Virtual: ${patientAppointment.isVirtual}'),
                  ],
                ),
                    const Spacer(),
                (patientAppointment.isVirtual)
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
        ));
  }

  Widget buildIcon(bool isVideoCall, context) {
    return ZegoSendCallInvitationButton(
      invitees: [
        ZegoUIKitUser(
            id: patientAppointment.doctorId.toString(),
            name: patientAppointment.doctorName)
      ],
      isVideoCall: isVideoCall,
      icon: ButtonIcon(
          icon: Icon(
            isVideoCall ? Icons.video_call : Icons.phone,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          backgroundColor: Theme.of(context).colorScheme.primary),
      buttonSize:  Size(40.w, 40.h),
      iconSize:  Size(40.w, 40.h),
      margin: EdgeInsets.zero,
    );
  }
}
