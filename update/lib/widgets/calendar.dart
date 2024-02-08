import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarSelect extends StatefulWidget {
  const CalendarSelect({super.key});

  @override
  State<CalendarSelect> createState() {
    return _CalendarSelect();
  }
}

class _CalendarSelect extends State<CalendarSelect> {
  late DateTime _focusedDay = DateTime.now();
  final DateTime _lastDay = DateTime.utc(2030, 12, 31);
  final DateTime _firstDay = DateTime.utc(2023, 01, 01);
  late DateTime _selectedDay;
  late CalendarFormat _calendarFormat;

  @override
  void initState() {
    super.initState();
    _selectedDay = DateTime.now();
    _calendarFormat = CalendarFormat.month;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 20,
        child: TableCalendar(
          focusedDay: _focusedDay,
          firstDay: _firstDay,
          lastDay: _lastDay,
          onPageChanged: (focusedDay) {
            setState(() {
              _focusedDay = focusedDay;
            });
          },
          selectedDayPredicate: (day) => isSameDay(day, _selectedDay),
          onDaySelected: (selectedDay, focusedDay) {
            setState(() {
              _selectedDay = selectedDay;
              _focusedDay = focusedDay;
            });
          },
          calendarFormat: _calendarFormat,
          onFormatChanged: (format) {
            setState(() {
              _calendarFormat = format;
            });
          },
          calendarStyle: const CalendarStyle(
            selectedDecoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.green),
          ),
        ),
      ),
    );
  }
}
