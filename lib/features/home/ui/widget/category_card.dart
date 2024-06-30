import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:medica/core/route.dart';
import 'package:medica/core/enums/doctor_specialization.dart';
import 'package:medica/features/doctor/business_logic/doctor_search_bloc.dart';
import 'package:medica/features/doctor/business_logic/doctor_search_event.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.specialization});

  final DoctorSpecialization specialization;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          context.read<DoctorSearchBloc>().add(
              DoctorSearchEvent.filterDoctorsBySpecializations(
                  specialization.name));
          context.goNamed(CustomRoutes.searchDoctor);
        },
        child: SizedBox(
          width: 132.w,
          child: Padding(
            padding:  EdgeInsets.symmetric( horizontal: 16.w ,vertical: 16.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  specialization.path,
                  height: 64.h,
                  width: 64.w,
                ),
                 SizedBox(height: 12.h),
                Text(
                  specialization.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
