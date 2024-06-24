import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:medica/core/exceptions/network_exceptions.dart';
import 'package:medica/features/appointment/data/repository/appointment_repository.dart';
import 'appointment_event.dart';
import 'appointment_state.dart';

@injectable
class AppointmentBloc extends Bloc<AppointmentEvent, AppointmentState> {
  final AppointmentRepository _appointmentRepository;

  AppointmentBloc(this._appointmentRepository)
      : super(const AppointmentState()) {
    on<CreateAppointment>((event, emit) async {
      emit(state.copyWith(status: AppointmentStateStatus.loading));
      final result =
          await _appointmentRepository.createAppointment(event.appointment);
      result.when(
        success: (_) =>
            emit(state.copyWith(status: AppointmentStateStatus.success)),
        failure: (error) => emit(state.copyWith(
            status: AppointmentStateStatus.failure,
            errorMessage: NetworkExceptions.getErrorMessage(error))),
      );
    });

    on<GetAvailableTimeSlots>((event, emit) async {
      emit(state.copyWith(status: AppointmentStateStatus.loading));
      final result =
          await _appointmentRepository.getAvailableTimeSlots(event.doctorId);
      result.when(
        success: (timeSlots) => emit(state.copyWith(
            timeSlots: timeSlots ?? [],
            status: AppointmentStateStatus.timeSlotsLoaded)),
        failure: (error) => emit(state.copyWith(
            status: AppointmentStateStatus.failure,
            errorMessage: NetworkExceptions.getErrorMessage(error))),
      );
    });
  }
}
