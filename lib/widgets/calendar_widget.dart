import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends StatelessWidget {
  const CalendarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: DateTime.utc(2010, 10, 16),
      lastDay: DateTime.utc(2030, 3, 14),
      focusedDay: DateTime.now(),
      rowHeight: 30,
      headerVisible: true,
      headerStyle: HeaderStyle(
          leftChevronIcon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
            size: 20,
          ),
          rightChevronIcon: Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.white,
            size: 20,
          ),
          formatButtonTextStyle: GoogleFonts.poppins(
              color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),
          titleTextStyle: GoogleFonts.poppins(
              color: Colors.white.withOpacity(0.3),
              fontSize: 13,
              fontWeight: FontWeight.w600),
          titleCentered: true),
      startingDayOfWeek: StartingDayOfWeek.sunday,
      onDaySelected: (selectedDay, focusedDay) {},
      calendarStyle: CalendarStyle(
          defaultTextStyle: GoogleFonts.poppins(
              color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),
          weekendTextStyle: GoogleFonts.poppins(
              color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),
          selectedDecoration: BoxDecoration(
              color: Color(0xfffad85d),
              borderRadius: BorderRadius.circular(7.5)),
          holidayTextStyle: GoogleFonts.poppins(
              color: Color(0xff845ED7),
              fontSize: 12,
              fontWeight: FontWeight.w500),
          todayTextStyle: GoogleFonts.poppins(
              color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),
          todayDecoration: BoxDecoration(
              color: Color(0xff845ED7),
              borderRadius: BorderRadius.circular(7.5))),
    );
  }
}
