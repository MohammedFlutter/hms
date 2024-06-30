import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class TimeSlot extends StatefulWidget {
  final DateTime startTime;
  final Duration interval;
  final DateTime endTime;
  final List<String> availableTimeSlots;

  final void Function(DateTime) onTimeSlotSelected;

  const TimeSlot({
    super.key,
    required this.startTime,
    required this.interval,
    required this.endTime,
    required this.availableTimeSlots,
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
      spacing: 10.w,
      runSpacing: 10.h,
      children: generateTimeSlots().map((timeSlot) {
        final isSelected = selectedTimeSlot == timeSlot;
        final isAvailable = widget.availableTimeSlots
            .contains(DateFormat('HH:mm:ss').format(timeSlot));
        return InkWell(
          onTap: isAvailable
              ? () {
                  widget.onTimeSlotSelected(timeSlot);
                  setState(() => selectedTimeSlot = timeSlot);
                }
              : null,
          child: Chip(
            backgroundColor: isAvailable
                ? isSelected
                    ? Colors.blue
                    : Colors.grey[200]
                : Colors.grey[300],
            label: SizedBox(
              width: 40.w,
              child: Text(
                DateFormat('HH:mm').format(timeSlot),
                style: TextStyle(
                  color: isAvailable
                      ? isSelected
                          ? Colors.white
                          : Colors.black
                      : Colors.grey[600],
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
