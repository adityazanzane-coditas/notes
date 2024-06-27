import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pootracker/core/themes/colors.dart';
import 'package:pootracker/core/themes/fonts.dart';
import 'package:pootracker/core/widgets/custom_add_button.dart';
import 'package:pootracker/core/widgets/share_widget.dart';
import 'package:pootracker/features/dailyReport/presentation/widgets/card_widget.dart';
import 'package:pootracker/features/dailyReport/presentation/widgets/selected_days_widget.dart';

class DailyReportPage extends StatefulWidget {
  const DailyReportPage({super.key});

  @override
  State<DailyReportPage> createState() => _DailyReportPageState();
}

class _DailyReportPageState extends State<DailyReportPage> {
  int _selectedIndex = 0;
  void showShareDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const ShareWidget();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      body: Stack(
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              double containerHeight = constraints.maxHeight * 0.67;
              double containerWidth = constraints.maxWidth;

              return Container(
                color: Colors.white,
                height: containerHeight,
                width: containerWidth,
                child: const Column(
                  children: [],
                ),
              );
            },
          ),
          Positioned(
            right: 0,
            top: 0,
            child: SvgPicture.asset('assets/images/Group 46topVector.svg'),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: SvgPicture.asset('assets/images/Group 55bottomVector.svg'),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_back_rounded,
                            color: primaryColor,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text('Daily Report',
                              style:
                                  getRoboto(FontWeight.w700, 30, primaryColor)),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          return showShareDialog(context);
                        },
                        child: Container(
                          width: 44,
                          height: 44,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: subColor,
                          ),
                          child: const Icon(Icons.ios_share),
                        ),
                      ),
                    ],
                  ),
                  const Expanded(child: SizedBox()),
                  SelectedDaysWidget(
                    onDaySelected: (index) {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    selectedIndex: _selectedIndex,
                  ),
                  const Expanded(child: SizedBox()),
                  const TaskCard(
                    type: 'assets/images/reportType1.svg',
                    task: 'Separate hard lumps',
                    time: '10:05 PM',
                    temperature: 25.0,
                    weatherIcon: 'assets/images/Groupcloud.svg',
                    gradientStops: [0.0, 0.65, 0.65],
                    startDuration: '10:05',
                    endDuration: '10:35',
                    totalDuration: 'Total 30Min',
                    maxDuration: 'Max 40Min',
                    timeWidth1: 44,
                    timeWidth2: 44,
                    timeWidth3: 44,
                  ),
                  const Expanded(child: SizedBox()),
                  const TaskCard(
                    type: 'assets/images/reporttype2.svg',
                    task: 'Separate hard lumps',
                    time: '08:20 AM',
                    temperature: 25.0,
                    weatherIcon: 'assets/images/Groupcloud.svg',
                    gradientStops: [0.0, 0.58, 0.58],
                    startDuration: '08:20',
                    endDuration: '08:40',
                    totalDuration: 'Total 20Min',
                    maxDuration: 'Max 40Min',
                    timeWidth1: 0,
                    timeWidth2: 0,
                    timeWidth3: 34,
                  ),
                  const Expanded(flex: 2, child: SizedBox()),
                  Text('Memo',
                      style: getRoboto(FontWeight.w700, 20, secondTextColor)),
                  const Expanded(child: SizedBox()),
                  Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque suscipit fringilla tortor. Nulla est libero.',
                      style: getRoboto(FontWeight.w400, 16, darkTextColor)),
                  const Expanded(child: SizedBox()),
                  Container(
                    width: 65,
                    height: 56,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color(0xffBDBDBD),
                        width: 1,
                      ),
                    ),
                    child: const Icon(
                      Icons.broken_image_outlined,
                      size: 30,
                      color: Color(0xffBDBDBD),
                    ),
                  ),
                  const Expanded(flex: 1, child: SizedBox()),
                ],
              ),
            ),
          ),
          const CustomAddButton(),
        ],
      ),
    );
  }
}
