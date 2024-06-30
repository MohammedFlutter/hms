
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/core/enums/doctor_specialization.dart';
import 'package:medica/features/doctor/business_logic/doctor_search_bloc.dart';
import 'package:medica/features/doctor/business_logic/doctor_search_event.dart';
import 'package:medica/features/doctor/business_logic/doctor_search_state.dart';

class DoctorFilterChips extends StatelessWidget {
  const DoctorFilterChips({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DoctorSearchBloc, DoctorSearchState>(
      builder: (context, state) {
        return SizedBox(
          height: 100.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding:  EdgeInsets.symmetric( horizontal: 8.w ,vertical: 8.h),
            children: DoctorSpecialization.values.map((specialization) {
              return Padding(
                padding:  EdgeInsets.symmetric(horizontal: 4.w),
                child: FilterChip(
                  color: WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
                    if (states.contains(WidgetState.selected)) {
                      return  Theme.of(context).colorScheme.primary; // Defer to selectedColor when selected
                    }
                    return Theme.of(context).colorScheme.surface; // Light grey when not selected
                  }),
                  // selectedColor: Theme.of(context).primaryColor,

                  showCheckmark: false,
                  label: Text(
                    specialization.name,

                    style: TextStyle(
                      color: state.selectedSpecializations == specialization.name
                          ? Theme.of(context).colorScheme.onPrimary // Selected
                          : Theme.of(context).colorScheme.onSurface, // Unselected
                    ),
                  ),
                  selected: state.selectedSpecializations == specialization.name,
                  onSelected: (isSelected) {
                    context.read<DoctorSearchBloc>().add(
                      DoctorSearchEvent.filterDoctorsBySpecializations(
                        isSelected ? specialization.name : null,
                      ),
                    );
                  },
                ),
              );
            }).toList(),
          ),
        );
      },
    );
  }
}