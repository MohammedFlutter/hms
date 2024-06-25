import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_history.freezed.dart';
part 'patient_history.g.dart';

@freezed
class PatientHistory with _$PatientHistory {
  const factory PatientHistory({
    required int id,
    required int patientId,
    required bool hasPhysDiuresis,
    required bool hasPhysDiet,
    required bool hasPhysDrugs,
    required bool hasPhysAlvo,
    required bool hasPhysPregnancies,
    required bool hasPhysAlcohol,
    required bool hasPhysSmoke,
    required bool hasPhysPeriod,
    required bool hasPastCardio,
    required bool hasPastCancer,
    required bool hasPastHyp,
    required bool hasPastNothing,
    required bool hasPastInfect,
    required bool hasPastOrto,
    required bool hasPastDrugAdd,
    required bool hasPastEndo,
    required bool hasPastResp,
    required String pastNotes,
    required bool hasFamCardio,
    required bool hasFamCancer,
    required bool hasFamHyp,
    required bool hasFamNothing,
    required bool hasFamInfect,
    required bool hasFamOrto,
    required bool hasFamDrugAdd,
    required bool hasFamEndo,
    required bool hasFamResp,
    required String familyNotes,
    required String allergies,
    required String usualMedic,
    required String surgeries,
    required String additionalNote,
    required String notes,
  }) = _PatientHistory;

  factory PatientHistory.fromJson(Map<String, dynamic> json) =>
      _$PatientHistoryFromJson(json);
}