import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:medica/core/const/text_style.dart';
import 'package:medica/core/enums/doctor_specialization.dart';
import 'package:medica/core/route.dart';
import 'package:medica/features/home/business_logic/home_patient/home_patient_bloc.dart';
import 'package:medica/features/home/business_logic/home_patient/home_patient_state.dart';
import 'package:medica/features/home/business_logic/home_patient/home_patient_event.dart';
import 'package:medica/features/home/ui/widget/category_card.dart';

class HomePatientPage extends StatefulWidget {
  const HomePatientPage({super.key});

  @override
  State<HomePatientPage> createState() => _HomePatientPageState();
}

class _HomePatientPageState extends State<HomePatientPage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<HomePatientBloc>(context).add(const Started());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePatientBloc, HomePatientState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Welcome ${state.firstname}'),
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
                    // height: 160,
                    child: Card(
                      child: Padding(
                        padding:  EdgeInsets.symmetric( horizontal: 8.w ,vertical: 8.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Reminder',
                              style: CustomTextStyle.h2,
                            ),
                             Gap(4.h),
                             SizedBox(
                              width: 200.w,
                              child: const Text(
                                'Check active appointments and get ready for the meeting.',
                                style: CustomTextStyle.bodySRegular,
                              ),
                            ),
                             Gap(12.h),
                            Row(
                              children: [
                                 SizedBox(
                                    width: 200.w,
                                    child: const Text(
                                      'Appointment must be in the same day',
                                      style: CustomTextStyle.bodySBold,
                                    )),
                                const Spacer(),
                                FilledButton(
                                    onPressed: () {

                                      GoRouter.of(context).goNamed(CustomRoutes.patientAppointment);
                                    },
                                    child:  Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                                      child: const Text('Check'),
                                    ))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                   Gap(16.h),
                  const Text(
                    'specialization:',
                    style: CustomTextStyle.h2,
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    height: 160.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children:
                          DoctorSpecialization.values.map((specialization) {
                        return CategoryCard(specialization: specialization);
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

