import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:medica/core/exceptions/network_exceptions.dart';
import 'package:medica/features/appointment/business_logic/doctor_appointment/doctor_appointment_event.dart';
import 'package:medica/features/appointment/business_logic/doctor_appointment/doctor_appointment_state.dart';
import 'package:medica/features/appointment/data/repository/appointment_repository.dart';

@injectable
class DoctorAppointmentBloc
    extends Bloc<DoctorAppointmentEvent, DoctorAppointmentState> {
  final AppointmentRepository _appointmentRepository;

  DoctorAppointmentBloc(this._appointmentRepository)
      : super(const DoctorAppointmentState()) {
    on<LoadAppointment>((event, emit) async {
      emit(state.copyWith(status: DoctorAppointmentStatus.loading));
      final result = await _appointmentRepository.getDoctorAppointment();
      result.when(
        success: (data) => emit(state.copyWith(
            status: DoctorAppointmentStatus.success,
            doctorAppointments: data ?? [])),
        failure: (error) => emit(state.copyWith(
            status: DoctorAppointmentStatus.failure,
            errorMessage: NetworkExceptions.getErrorMessage(error))),
      );
    });
  }
}
