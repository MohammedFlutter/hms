import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medica/features/doctor/business_logic/doctor_search_bloc.dart';
import 'package:medica/features/doctor/business_logic/doctor_search_event.dart';


class DoctorFilterChips extends StatefulWidget {
  const DoctorFilterChips({super.key});

  @override
  State<DoctorFilterChips> createState() => _DoctorFilterChipsState();
}

class _DoctorFilterChipsState extends State<DoctorFilterChips> {
  String? _selectedSpecialization;

  final List<String> _specializations = [
    'Cardiologist',
    'Dermatologist',
    'Endocrinologist',
    'Gastroenterologist',
    'Neurologist',
    'Oncologist',
    'Pediatrician',
    'Psychiatrist',
    // Add more specializations as needed
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(8),
        children: _specializations.map((specialization) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: FilterChip(
              // selectedColor: ,
              label: Text(specialization),
              selected: _selectedSpecialization == specialization,
              onSelected: (isSelected) {
                setState(() {
                  if (isSelected) {
                    _selectedSpecialization = specialization;
                  } else {
                    _selectedSpecialization = null;
                  }
                });
                context.read<DoctorSearchBloc>().add(
                    SearchDoctorEvent.filterDoctorsBySpecializations(
                        _selectedSpecialization));
              },
            ),
          );
        }).toList(),
      ),
    );
  }
}
