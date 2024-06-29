import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medica/core/helper/custom_snake_bar.dart';
import 'package:medica/features/appointment/business_logic/doctor_appointment/doctor_appointment_bloc.dart';
import 'package:medica/features/appointment/business_logic/doctor_appointment/doctor_appointment_event.dart';
import 'package:medica/features/appointment/business_logic/doctor_appointment/doctor_appointment_state.dart';
import 'package:medica/features/appointment/ui/widget/doctor_appointment_card.dart'; // Import your DoctorAppointment model

class DoctorAppointmentPage extends StatefulWidget {
  const DoctorAppointmentPage({super.key});

  @override
  State<DoctorAppointmentPage> createState() => _DoctorAppointmentPageState();
}

class _DoctorAppointmentPageState extends State<DoctorAppointmentPage> {
  @override
  void initState() {
    super.initState();
    context.read<DoctorAppointmentBloc>().add(const LoadAppointment());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doctor Appointments'),
      ),
      body: BlocConsumer<DoctorAppointmentBloc, DoctorAppointmentState>(
        builder: (context, state) {
          return RefreshIndicator(
            onRefresh: () async {
              context
                  .read<DoctorAppointmentBloc>()
                  .add(const LoadAppointment()); // Refresh appointments
            },
            child: _buildAppointmentList(state),
          );
        },
        listener: (BuildContext context, DoctorAppointmentState state) {
          switch (state.status) {
            case DoctorAppointmentStatus.initial:
              break;

            case DoctorAppointmentStatus.loading:
              break;
            case DoctorAppointmentStatus.success:
              break;
            case DoctorAppointmentStatus.failure:
              CustomSnakeBar.show(
                  context: context, isError: true, message: state.errorMessage);
              break;
          }
        },
      ),
    );
  }

  Widget _buildAppointmentList(DoctorAppointmentState state) {
    if (state.doctorAppointments == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    if (state.doctorAppointments!.isEmpty) {
      return const Center(
        child: Text("you don't have Appointment "),
      );
    }
    if (state.doctorAppointments != null) {
      return ListView.builder(
        itemCount: state.doctorAppointments!.length,
        itemBuilder: (context, index) {
          final appointment = state.doctorAppointments![index];
          return DoctorAppointmentCard(doctorAppointment: appointment,);
        },
      );
    }
    return const SizedBox();
  }
}
