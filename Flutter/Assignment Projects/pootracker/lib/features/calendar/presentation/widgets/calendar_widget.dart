import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pootracker/core/themes/colors.dart';
import 'package:pootracker/core/themes/fonts.dart';
import 'package:pootracker/features/calendar/data/color_poop_icon_list.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends StatelessWidget {
  const CalendarWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TableCalendar(
          calendarBuilders: CalendarBuilders(
            markerBuilder: (context, day, events) {
              if (day.isBefore(DateTime(day.year, day.month, 11))) {
                final index = day.day - 1;
                if (index >= 0 && index < colorPoopIconList.length) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Expanded(flex: 4, child: SizedBox()),
                      Text(index.toString()),
                      const Expanded(flex: 4, child: SizedBox()),
                      SvgPicture.asset(
                        colorPoopIconList[index],
                        width: 10,
                        height: 10,
                      ),
                      const Expanded(flex: 7, child: SizedBox()),
                    ],
                  );
                }
              }
              return null;
            },
          ),
          firstDay: DateTime.utc(2020, 1, 1),
          lastDay: DateTime.utc(2030, 12, 31),
          focusedDay: DateTime.now(),
          daysOfWeekStyle: DaysOfWeekStyle(
            weekdayStyle: getRoboto(FontWeight.w400, 16, darkTextColor),
            weekendStyle: getRoboto(FontWeight.w400, 16, darkTextColor),
          ),
          daysOfWeekHeight: 80,
          headerStyle: HeaderStyle(
            formatButtonVisible: false,
            titleCentered: true,
            titleTextStyle: getRoboto(FontWeight.w700, 20, darkTextColor),
          ),
          calendarStyle: CalendarStyle(
            cellMargin: const EdgeInsets.symmetric(horizontal: 2, vertical: 1),
            outsideDaysVisible: false,
            defaultDecoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                color: const Color(0xffF2F2F2),
                width: 1,
              ),
            ),
            todayDecoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                color: primaryColor,
                width: 1,
              ),
            ),
            weekendDecoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                color: const Color(0xffF2F2F2),
                width: 1,
              ),
            ),
            defaultTextStyle: getRoboto(FontWeight.w700, 16, secondTextColor),
            todayTextStyle: getRoboto(FontWeight.w700, 16, secondTextColor),
            weekendTextStyle: getRoboto(FontWeight.w700, 16, secondTextColor),
            cellAlignment: Alignment.topLeft,
            cellPadding: const EdgeInsets.only(left: 6, top: 2),
          ),
        ),
      ],
    );
  }
}
