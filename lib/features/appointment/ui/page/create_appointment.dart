import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:medica/features/appointment/business_logic/appointment_bloc.dart';
import 'package:medica/features/appointment/business_logic/appointment_event.dart';
import 'package:medica/features/appointment/business_logic/appointment_state.dart';
import 'package:medica/features/appointment/data/model/appointment.dart';
import 'package:medica/features/appointment/ui/widget/time_slot.dart';
import 'package:medica/features/doctor/data/model/doctor.dart';
import 'package:intl/intl.dart';

class CreateAppointmentPage extends StatefulWidget {
  const CreateAppointmentPage({super.key, required this.doctor});

  final DoctorDetails doctor;

  @override
  State<CreateAppointmentPage> createState() => _CreateAppointmentPageState();
}

final dateFormat = DateFormat('HH:mm:ss');

class _CreateAppointmentPageState extends State<CreateAppointmentPage> {
  final _formKey = GlobalKey<FormState>();
  final _reasonController = TextEditingController();
  DateTime? _selectedTime;
  bool _isVirtual = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Appointment'),
      ),
      body: BlocConsumer<AppointmentBloc, AppointmentState>(
        listener: (context, state) {
          state.when(
            initial: () {},
            loading: () {},
            success: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                    content: Text('Appointment created successfully!')),
              );
              context.pop();
            },
            failure: (error) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Error: $error')),
              );
            },
          );
        },
        builder: (BuildContext context, AppointmentState state) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: _reasonController,
                    decoration:
                        const InputDecoration(labelText: 'Reason for Visit'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a reason for your visit';
                      }
                      return null;
                    },
                  ),
                  const Gap(16),
                  TimeSlot(
                    startTime: dateFormat.parse(
                        widget.doctor.professionalDetails.workStartTime!),
                    endTime: dateFormat
                        .parse(widget.doctor.professionalDetails.workEndTime!),
                    interval: const Duration(minutes: 30),
                    onTimeSlotSelected: (selectedTime) {
                      _selectedTime = selectedTime;
                    },
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Checkbox(
                        value: _isVirtual,
                        onChanged: (value) =>
                            setState(() => _isVirtual = value!),
                      ),
                      const Text('Virtual Appointment'),
                    ],
                  ),
                  const Gap(24),
                  ElevatedButton(
                    onPressed: () {
                      onCreateAppointment(context);
                    },
                    child: const Text('Create Appointment'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void onCreateAppointment(BuildContext context) {
    if (_selectedTime == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select a time slot')),
      );
      return;
    }
    if (_formKey.currentState!.validate()) {
      final appointment = Appointment(
        startTime: dateFormat.format(_selectedTime!),
        reasonForVisit: _reasonController.text,
        doctorId: widget.doctor.id,
        isVirtual: _isVirtual,
      );

      context.read<AppointmentBloc>().add(
            AppointmentEvent.createAppointment(appointment),
          );
    }
  }
}
