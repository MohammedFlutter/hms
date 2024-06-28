import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:medica/core/exceptions/network_exceptions.dart';
import 'package:medica/features/appointment/business_logic/patient_appointment/patient_appointment_event.dart';
import 'package:medica/features/appointment/business_logic/patient_appointment/patient_appointment_state.dart';
import 'package:medica/features/appointment/data/repository/appointment_repository.dart';

@injectable
class PatientAppointmentBloc
    extends Bloc<PatientAppointmentEvent, PatientAppointmentState> {
  final AppointmentRepository _appointmentRepository;

  PatientAppointmentBloc(this._appointmentRepository)
      : super(const PatientAppointmentState()) {
    on<LoadAppointment>((event, emit) async {
      emit(state.copyWith(status: PatientAppointmentStatus.loading));
      final result = await _appointmentRepository.getPatientAppointment();
      result.when(
        success: (data) => emit(state.copyWith(
            status: PatientAppointmentStatus.success,
            patientAppointments: data ?? [])),
        failure: (error) => emit(state.copyWith(
            status: PatientAppointmentStatus.failure,
            errorMessage: NetworkExceptions.getErrorMessage(error))),
      );
    });
  }
}
