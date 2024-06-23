
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class TimeSlot extends StatefulWidget {
  final DateTime startTime;
  final Duration interval;
  final DateTime endTime;

  final void Function(DateTime) onTimeSlotSelected;

  const TimeSlot({
    super.key,
    required this.startTime,
    required this.interval,
    required this.endTime,
    required this.onTimeSlotSelected,
  });

  @override
  State<TimeSlot> createState() => _TimeSlotState();
}

class _TimeSlotState extends State<TimeSlot> {
  DateTime? selectedTimeSlot;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: generateTimeSlots().map((timeSlot) {
        final isSelected = selectedTimeSlot == timeSlot;
        return InkWell(
          onTap: () {
            widget.onTimeSlotSelected(timeSlot);
            setState(() => selectedTimeSlot = timeSlot);
          },
          child: Chip(
            // padding:EdgeInsetsDirectional.symmetric(horizontal: 20) ,

            backgroundColor: isSelected ? Colors.blue : Colors.grey[200],
            label: SizedBox(
              width: 36,
              child: Text(
                DateFormat('HH:mm').format(timeSlot),
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  List<DateTime> generateTimeSlots() {
    List<DateTime> timeSlots = [];
    var current = widget.startTime;
    while (current.isBefore(widget.endTime)) {
      timeSlots.add(current);
      current = current.add(widget.interval);
    }
    return timeSlots;
  }
}
