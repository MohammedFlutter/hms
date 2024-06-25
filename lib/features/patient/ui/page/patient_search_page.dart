import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medica/core/const/text_style.dart';
import 'package:medica/core/helper/custom_dialog.dart';
import 'package:medica/core/helper/custom_snake_bar.dart';
import 'package:medica/core/route.dart';
import 'package:medica/features/patient/business_logic/patient_search_bloc.dart';
import 'package:medica/features/patient/business_logic/patient_search_event.dart';
import 'package:medica/features/patient/business_logic/patient_search_state.dart';
import 'package:medica/features/patient/ui/widget/patient_card.dart';

class PatientSearchPage extends StatelessWidget {
  const PatientSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doctor List'),
      ),
      body: BlocConsumer<PatientSearchBloc, PatientSearchState>(
        builder: (context, state) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Patient...',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(),
                    ),
                  ),
                  onChanged: (query) {
                    context
                        .read<PatientSearchBloc>()
                        .add(SearchPatients(query));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Number of Patient: ${state.patients.length}'),
                    FilledButton(
                      style: const ButtonStyle(
                          padding: WidgetStatePropertyAll(
                              EdgeInsetsDirectional.symmetric(horizontal: 8))),
                      onPressed: () {
                        context
                            .read<PatientSearchBloc>()
                            .add(SortPatients(!state.isAscending));
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
                child: ListView.builder(
                  itemCount: state.patients.length,
                  itemBuilder: (context, index) {
                    final patient = state.patients[index];
                    return PatientCard(patient: patient);
                  },
                ),
              ),
            ],
          );
        },
        listenWhen: (previous, current) => previous.status != current.status,
        listener: (BuildContext context, PatientSearchState state) {
          switch (state.status) {
            case PatientSearchStatus.initial:
              break;
            case PatientSearchStatus.loading:
              // CustomDialog.showLoadingDialog(context);
              break;
            case PatientSearchStatus.searchLoaded:
              // context.pop();
              break;
            case PatientSearchStatus.failure:
              // context.pop();
              CustomSnakeBar.show(
                  context: context, isError: true, message: state.errorMessage);
              break;
            case PatientSearchStatus.patientHistoryLoaded:
              final patient = state.patients
                  .where((patient) =>
                      patient.id == state.patientHistory!.patientId)
                  .first;
              final extra = {
                CustomRouteParameter.patientHistory: state.patientHistory!,
                CustomRouteParameter.patientInfo: patient,
              };
              context.goNamed(CustomRoutes.patientInfo, extra: extra);
              break;
          }
        },
      ),
    );
  }
}
