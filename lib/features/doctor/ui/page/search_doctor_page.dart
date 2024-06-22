import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medica/core/helper/custom_dialog.dart';
import 'package:medica/core/helper/custom_snake_bar.dart';
import 'package:medica/features/doctor/business_logic/search_doctor_bloc.dart';
import 'package:medica/features/doctor/business_logic/search_doctor_event.dart';
import 'package:medica/features/doctor/business_logic/search_doctor_state.dart';
import 'package:medica/features/doctor/ui/widget/doctor_card.dart';
import 'package:medica/features/doctor/ui/widget/doctor_filter_chip.dart';

class SearchDoctorPage extends StatelessWidget {
  const SearchDoctorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doctor List'),
      ),
      body: BlocConsumer<SearchDoctorBloc, SearchDoctorState>(
        builder: (context, state) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search doctors...',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(),
                    ),
                  ),
                  onChanged: (query) {
                    context
                        .read<SearchDoctorBloc>()
                        .add(SearchDoctorEvent.searchDoctors(query));
                  },
                ),
              ),
              const DoctorFilterChips(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Number of Doctors: ${state.doctors.length}'),
                    ElevatedButton(
                      onPressed: () {
                        context.read<SearchDoctorBloc>().add(
                            SearchDoctorEvent.sortDoctors(!state.isAscending));
                      },
                      child: Text(state.isAscending ? 'Sort Z-A' : 'Sort A-Z'),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
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
        listenWhen: (previous, current) => previous.status!=current.status,
        listener: (BuildContext context, SearchDoctorState state) {
          switch (state.status) {
            case DoctorStatus.initial:
              break;
            case DoctorStatus.loading:
              CustomDialog.showLoadingDialog(context);
              break;
            case DoctorStatus.success:
              context.pop();
              break;
            case DoctorStatus.failure:
              context.pop();
              CustomSnakeBar.show(
                  context: context, isError: true, message: state.errorMessage);
              break;
          }
        },
      ),
    );
  }
}
