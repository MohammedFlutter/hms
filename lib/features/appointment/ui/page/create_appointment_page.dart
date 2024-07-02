import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:medica/core/helper/custom_snake_bar.dart';
import 'package:medica/core/route/route.dart';
import 'package:medica/features/appointment/business_logic/create_appointment/appointment_bloc.dart';
import 'package:medica/features/appointment/business_logic/create_appointment/appointment_event.dart';
import 'package:medica/features/appointment/business_logic/create_appointment/appointment_state.dart';
import 'package:medica/features/appointment/data/model/patient_appointment.dart';
import 'package:medica/features/appointment/ui/widget/time_slot.dart';
import 'package:medica/features/doctor/data/model/doctor.dart';
import 'package:intl/intl.dart';

class CreateAppointmentPage extends StatefulWidget {
  const CreateAppointmentPage({super.key, required this.doctor});

  final Doctor doctor;

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
  void initState() {
    super.initState();

    context
        .read<AppointmentBloc>()
        .add(GetAvailableTimeSlots(widget.doctor.id));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Appointment'),
      ),
      body: BlocConsumer<AppointmentBloc, AppointmentState>(
        listener: (context, state) {
          switch (state.status) {
            case AppointmentStateStatus.loading:
              break;
            case AppointmentStateStatus.success:
              CustomSnakeBar.show(
                  context: context,
                  isError: false,
                  message: 'Appointment created successfully!');
              context.pop();
              break;
            case AppointmentStateStatus.failure:
              CustomSnakeBar.show(
                  context: context, isError: true, message: state.errorMessage);
              break;
            case AppointmentStateStatus.initial:
              break;
            case AppointmentStateStatus.timeSlotsLoaded:
              if (state.timeSlots.isEmpty) {
                CustomSnakeBar.show(
                    context: context,
                    isError: true,
                    message: 'this Doctor is not available now');
                context.goNamed(CustomRoutes.searchDoctor);
              }
          }
        },
        builder: (BuildContext context, AppointmentState state) {
          return Padding(
            padding:  EdgeInsets.symmetric( horizontal: 16.w ,vertical: 16.h),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
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
                     Gap(16.h),
                    TimeSlot(
                      startTime: dateFormat.parse(
                          widget.doctor.professionalDetails.workStartTime!),
                      endTime: dateFormat.parse(
                          widget.doctor.professionalDetails.workEndTime!),
                      interval: const Duration(minutes: 30),
                      availableTimeSlots: state.timeSlots,
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
                     Gap(24.h),
                    FilledButton(
                      onPressed: () {
                        onCreateAppointment(context);
                      },
                      style:  ButtonStyle(
                          padding: WidgetStatePropertyAll(
                              EdgeInsets.symmetric(horizontal: 8.w))),
                      child: const Text('Create Appointment'),
                    ),
                  ],
                ),
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
      final appointment = PatientAppointment(
        startTime: dateFormat.format(_selectedTime!),
        reasonForVisit: _reasonController.text,
        doctorId: widget.doctor.id,
        virtual: _isVirtual,
      );

      context.read<AppointmentBloc>().add(
            AppointmentEvent.createAppointment(appointment),
          );
    }
  }
}
