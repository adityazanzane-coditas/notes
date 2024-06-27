import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pootracker/core/themes/colors.dart';
import 'package:pootracker/core/themes/fonts.dart';

class SelectedDaysWidget extends StatefulWidget {
  final Function(int) onDaySelected;
  final int selectedIndex;

  const SelectedDaysWidget({
    super.key,
    required this.onDaySelected,
    required this.selectedIndex,
  });

  @override
  _DaysWidgetState createState() => _DaysWidgetState();
}

class _DaysWidgetState extends State<SelectedDaysWidget> {
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
          return _buildDayContainer(_daysData[index], context, index);
        },
      ),
    );
  }

  Widget _buildDayContainer(
    Map<String, dynamic> dayData,
    BuildContext context,
    int index,
  ) {
    return OutlinedButton(
      onPressed: () {
        widget.onDaySelected(index);
      },
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22.0),
        ),
        side: const BorderSide(
          color: Colors.grey,
          width: 0.3,
        ),
        backgroundColor:
            widget.selectedIndex == index ? primaryColor : Colors.transparent,
      ),
      child: Column(
        children: [
          Flexible(
            child: Text(
              dayData['day'].toString(),
              style: getRoboto(
                FontWeight.w300,
                35,
                widget.selectedIndex == index ? Colors.white : secondTextColor,
              ),
            ),
          ),
          Flexible(
            child: Text(
              dayData['dayName'],
              style: getRoboto(
                FontWeight.w300,
                16,
                widget.selectedIndex == index ? Colors.white : thirdTextColor,
              ),
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
