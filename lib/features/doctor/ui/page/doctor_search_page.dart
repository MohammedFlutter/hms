import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medica/core/const/text_style.dart';
import 'package:medica/core/helper/custom_snake_bar.dart';
import 'package:medica/features/doctor/business_logic/doctor_search_bloc.dart';
import 'package:medica/features/doctor/business_logic/doctor_search_event.dart';
import 'package:medica/features/doctor/business_logic/doctor_search_state.dart';

import 'package:medica/features/doctor/ui/widget/doctor_card.dart';
import 'package:medica/features/doctor/ui/widget/doctor_filter_chip.dart';

class DoctorSearchPage extends StatelessWidget {
  const DoctorSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doctor List'),
      ),
      body: BlocConsumer<DoctorSearchBloc, DoctorSearchState>(
        builder: (context, state) {
          return Column(
            children: [
              Padding(
                padding:  EdgeInsets.symmetric( horizontal: 16.w ,vertical: 16.h),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search doctors...',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.r),
                      borderSide: const BorderSide(),
                    ),
                  ),
                  onChanged: (query) {
                    context
                        .read<DoctorSearchBloc>()
                        .add(DoctorSearchEvent.searchDoctors(query));
                  },
                ),
              ),
              const DoctorFilterChips(),
              Padding(
                padding:  EdgeInsets.symmetric( horizontal: 16.w ,vertical: 16.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Number of Doctors: ${state.doctors.length}'),
                    FilledButton(
                      style:  ButtonStyle(
                          padding: WidgetStatePropertyAll(
                              EdgeInsetsDirectional.symmetric(horizontal: 8.w))),
                      onPressed: () {
                        context.read<DoctorSearchBloc>().add(
                            DoctorSearchEvent.sortDoctors(!state.isAscending));
                      },
                      child: Text(
                        state.isAscending ? 'Sort Z-A' : 'Sort A-Z',
                        style: CustomTextStyle.bodySMedium,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: (state.doctors.isEmpty)
                    ? const Center(
                        child: Text(
                          'No Doctors Found',
                          style: CustomTextStyle.bodySMedium,
                        ),
                      )
                    : ListView.builder(
                        itemCount: state.doctors.length,
                        itemBuilder: (context, index) {
                          final doctor = state.doctors[index];
                          return DoctorCard(doctor: doctor);
                        },
                      ),
              ),
            ],
          );
        },
        listenWhen: (previous, current) => previous.status != current.status,
        listener: (BuildContext context, DoctorSearchState state) {
          switch (state.status) {
            case DoctorStatus.initial:
              break;
            case DoctorStatus.loading:
              // CustomDialog.showLoadingDialog(context);
              break;
            case DoctorStatus.success:
              // context.pop();
              break;
            case DoctorStatus.failure:
              // context.pop();
              CustomSnakeBar.show(
                  context: context, isError: true, message: state.errorMessage);
              break;
          }
        },
      ),
    );
  }
}
