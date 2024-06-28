import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medica/core/helper/custom_snake_bar.dart';
import 'package:medica/features/appointment/business_logic/patient_appointment/patient_appointment_bloc.dart';
import 'package:medica/features/appointment/business_logic/patient_appointment/patient_appointment_event.dart';
import 'package:medica/features/appointment/business_logic/patient_appointment/patient_appointment_state.dart';
import 'package:medica/features/appointment/data/model/patient_appointment.dart';
import 'package:medica/features/appointment/ui/widget/appointment_card.dart'; // Import your PatientAppointment model

class PatientAppointmentPage extends StatefulWidget {
  const PatientAppointmentPage({super.key});

  @override
  State<PatientAppointmentPage> createState() => _PatientAppointmentPageState();
}

class _PatientAppointmentPageState extends State<PatientAppointmentPage> {
  @override
  void initState() {
    super.initState();
    context.read<PatientAppointmentBloc>().add(const LoadAppointment());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Patient Appointments'),
      ),
      body: BlocConsumer<PatientAppointmentBloc, PatientAppointmentState>(
        builder: (context, state) {
          return RefreshIndicator(
            onRefresh: () async {
              context
                  .read<PatientAppointmentBloc>()
                  .add(const LoadAppointment()); // Refresh appointments
            },
            child: _buildAppointmentList(state),
          );
        },
        listener: (BuildContext context, PatientAppointmentState state) {
          switch (state.status) {
            case PatientAppointmentStatus.initial:
              break;

            case PatientAppointmentStatus.loading:
              break;
            case PatientAppointmentStatus.success:
              break;
            case PatientAppointmentStatus.failure:
              CustomSnakeBar.show(
                  context: context, isError: true, message: state.errorMessage);
              break;
          }
        },
      ),
    );
  }

  Widget _buildAppointmentList(PatientAppointmentState state) {
    if (state.patientAppointments == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    if (state.patientAppointments!.isEmpty) {
      return const Center(
        child: Text("you don't have Appointment "),
      );
    }
    if (state.patientAppointments != null) {
      return ListView.builder(
        itemCount: state.patientAppointments!.length,
        itemBuilder: (context, index) {
          final appointment = state.patientAppointments![index];
          return AppointmentCard(
              name: appointment.doctorId.toString(),
              date: appointment.startTime,
              isVirtual: appointment.isVirtual,
              onTap: () {});
        },
      );
    }
    return const SizedBox();
  }
}
