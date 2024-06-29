import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:medica/core/exceptions/network_exceptions.dart';
import 'package:medica/features/appointment/business_logic/patient_appointment/patient_appointment_event.dart';
import 'package:medica/features/appointment/business_logic/patient_appointment/patient_appointment_state.dart';
import 'package:medica/features/appointment/business_logic/service/appointment_service.dart';

@injectable
class PatientAppointmentBloc
    extends Bloc<PatientAppointmentEvent, PatientAppointmentState> {
  final AppointmentsService _appointmentsService;

  PatientAppointmentBloc(this._appointmentsService)
      : super(const PatientAppointmentState()) {
    on<LoadAppointment>((event, emit) async {
      emit(state.copyWith(status: PatientAppointmentStatus.loading));
      final result = await _appointmentsService.getPatientAppointments();
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
