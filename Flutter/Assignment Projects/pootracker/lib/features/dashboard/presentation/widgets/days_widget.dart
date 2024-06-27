import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pootracker/core/themes/colors.dart';
import 'package:pootracker/core/themes/fonts.dart';
import 'package:pootracker/features/dailyReport/presentation/page/daily_report_page.dart';

class DaysWidget extends StatelessWidget {
  DaysWidget({super.key});

  final List<Map<String, dynamic>> _daysData = [
    {
      'day': 6,
      'dayName': 'Mon',
      'image': [
        'assets/images/VectorbrownVector.svg',
        'assets/images/VectorskinVector.svg',
      ]
    },
    {
      'day': 7,
      'dayName': 'Tue',
      'image': [
        'assets/images/VectorskinVector.svg',
      ]
    },
    {
      'day': 8,
      'dayName': 'Wed',
      'image': [
        'assets/images/VectorgreyVector.svg',
        'assets/images/VectorbrownVector.svg',
      ]
    },
    {
      'day': 9,
      'dayName': 'Thu',
      'image': [
        'assets/images/VectorgreyVector.svg',
      ]
    },
    {
      'day': 10,
      'dayName': 'Fri',
      'image': [
        'assets/images/VectorgreyVector.svg',
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        scrollDirection: Axis.horizontal,
        itemCount: _daysData.length,
        itemBuilder: (context, index) {
          return _buildDayContainer(_daysData[index], context);
        },
      ),
    );
  }

  Widget _buildDayContainer(
      Map<String, dynamic> dayData, BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const DailyReportPage()),
        );
      },
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22.0),
        ),
        side: const BorderSide(
          color: Colors.grey,
          width: 0.3,
        ),
      ),
      child: Column(
        children: [
          Flexible(
            child: Text(
              dayData['day'].toString(),
              style: getRoboto(FontWeight.w300, 35, secondTextColor),
            ),
          ),
          Flexible(
            child: Text(
              dayData['dayName'],
              style: getRoboto(FontWeight.w300, 16, thirdTextColor),
            ),
          ),
          Row(
            children: dayData['image'].map<Widget>((image) {
              return SvgPicture.asset(image);
            }).toList(),
          ),
        ],
      ),
    );
  }
}
