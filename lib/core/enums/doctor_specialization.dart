import 'package:medica/generated/assets.dart';

enum DoctorSpecialization {
  generalPractice('General Practice', Assets.iconsGeneralPractice),
  pediatrics('Pediatrics', Assets.iconsPediatrics),
  obstetricsGynecology(
      'Obstetrics Gynecology', Assets.iconsObstetricsGynecology),
  dermatology('Dermatology', Assets.iconsDermatology),
  cardiology('Cardiology', Assets.iconsCardiology),
  neurology('Neurology', Assets.iconsNeurology),
  oncology('Oncology', Assets.iconsOncology),
  orthopedics('Orthopedics', Assets.iconsOrthopedics),
  ophthalmology('Ophthalmology', Assets.iconsOphthalmology),
  otolaryngology('otolaryngology', Assets.iconsOtolaryngology),
  psychiatry('Psychiatry', Assets.iconsPsychiatry),
  urology('urology', Assets.iconsUrology);

  const DoctorSpecialization(this.name, this.path);

  final String name;
  final String path;
}
