import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard(
      {super.key,
      required this.name,
      required this.date,
      required this.isVirtual,
      required this.onTap});

  final String name;

  final String date;
  final bool? isVirtual;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child:  Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
            child: Column( // Use a Column to arrange content vertically
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const Gap(4),
                Text('Date: $date'),
                const Gap( 4),
                Text('Virtual: $isVirtual'),
              ],
            ),
          ),
        ));
  }
}
