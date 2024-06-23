import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:medica/features/appointment/data/repository/appointment_repository.dart';
import 'appointment_event.dart';
import 'appointment_state.dart';

@injectable
class AppointmentBloc extends Bloc<AppointmentEvent, AppointmentState> {
  final AppointmentRepository _appointmentRepository;

  AppointmentBloc(this._appointmentRepository)
      : super(const AppointmentState.initial()) {
    on<CreateAppointment>((event, emit) async {
      emit(const AppointmentState.loading());
      final result =
          await _appointmentRepository.createAppointment(event.appointment);
      result.when(
        success: (_) => emit(const AppointmentState.success()),
        failure: (error) => emit(AppointmentState.failure(error.toString())),
      );
    });
  }
}
