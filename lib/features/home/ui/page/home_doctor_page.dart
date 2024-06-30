import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:medica/core/const/text_style.dart';
import 'package:medica/core/route.dart';
import 'package:medica/features/home/business_logic/home_doctor/home_doctor_bloc.dart';
import 'package:medica/features/home/business_logic/home_doctor/home_doctor_event.dart';
import 'package:medica/features/home/business_logic/home_doctor/home_doctor_state.dart';

class HomeDoctorPage extends StatefulWidget {
  const HomeDoctorPage({super.key});

  @override
  State<HomeDoctorPage> createState() => _HomeDoctorPageState();
}

class _HomeDoctorPageState extends State<HomeDoctorPage> {
  @override
  void initState() {
    super.initState();
    context.read<HomeDoctorBloc>().add(const Started());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeDoctorBloc, HomeDoctorState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Welcome Dr. ${state.firstname}'),
          ),
          body: Padding(
            padding:  EdgeInsets.symmetric( horizontal: 16.w ,vertical: 16.h),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Gap(12.h),
                  SizedBox(
                    width: double.maxFinite,
                    child: Card(
                      child: Padding(
                        padding:  EdgeInsets.symmetric( horizontal: 8.w ,vertical: 8.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Today\'s Schedule',
                              style: CustomTextStyle.h2,
                            ),
                             Gap(4.h),
                             SizedBox(
                              width: 200.w,
                              child: const Text(
                                'Review your appointments for today and manage your schedule.',
                                style: CustomTextStyle.bodySRegular,
                              ),
                            ),
                             Gap(12.h),
                            Row(
                              children: [
                                 SizedBox(
                                  width: 200.w,
                                  child: const Text(
                                    'Stay organized and prepared',
                                    style: CustomTextStyle.bodySBold,
                                  ),
                                ),
                                const Spacer(),
                                FilledButton(
                                  onPressed: () {
                                    GoRouter.of(context).goNamed(CustomRoutes.doctorAppointment);
                                  },
                                  child:  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                                    child: const Text('View Schedule'),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                   Gap(16.h),
                  const Text(
                    'Patient Insights',
                    style: CustomTextStyle.h2,
                  ),
                  // You can add widgets here to display patient insights,
                  // such as recent messages, upcoming appointments, etc.
                   Gap(16.h),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}