import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pootracker/core/themes/colors.dart';
import 'package:pootracker/core/themes/fonts.dart';
import 'package:pootracker/core/widgets/custom_add_button.dart';
import 'package:pootracker/features/calendar/presentation/page/calendar_page.dart';
import 'package:pootracker/features/dashboard/data/chart_data.dart';
import 'package:pootracker/features/dashboard/presentation/widgets/days_widget.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
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
                children: [
                  const Expanded(child: SizedBox()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Dashboard',
                          style: getRoboto(FontWeight.w700, 30, primaryColor)),
                      SvgPicture.asset('assets/icons/Group 43dashProfile.svg'),
                    ],
                  ),
                  const Expanded(flex: 2, child: SizedBox()),
                  DaysWidget(),
                  const Expanded(flex: 1, child: SizedBox()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SvgPicture.asset('assets/icons/ExcludedownArrow.svg'),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CalendarPage()),
                            );
                          },
                          child: Text(
                            'View Calendar',
                            style: getRoboto(FontWeight.w400, 16, subColor),
                          )),
                    ],
                  ),
                  const Expanded(child: SizedBox()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Insight',
                          style:
                              getRoboto(FontWeight.w700, 20, secondTextColor)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  primaryColor),
                            ),
                            onPressed: () {},
                            child: Text('Week',
                                style: getRoboto(
                                    FontWeight.w500, 16, lightTextColor)),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          OutlinedButton(
                            style: ButtonStyle(
                              side: MaterialStateProperty.all<BorderSide>(
                                BorderSide(
                                  color: thirdTextColor,
                                  width: 0.1,
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: Text('Month',
                                style: getRoboto(
                                    FontWeight.w500, 16, thirdTextColor)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Expanded(flex: 2, child: SizedBox()),
                  Text('Type chart compare',
                      style: getRoboto(FontWeight.w700, 16, darkTextColor)),
                  const Expanded(child: SizedBox()),
                  Column(
                    children: [
                      SfCircularChart(
                        margin: const EdgeInsets.all(0),
                        series: [
                          DoughnutSeries<chartData, String>(
                            dataSource: ChartData,
                            legendIconType: LegendIconType.circle,
                            radius: '120',
                            explodeOffset: '1',
                            explode: true,
                            explodeAll: true,
                            startAngle: 180,
                            endAngle: 180,
                            xValueMapper: (chartData data, _) => data.x,
                            yValueMapper: (chartData data, _) => data.y,
                            pointColorMapper: (chartData data, _) => data.color,
                          ),
                        ],
                        legend: Legend(
                          textStyle: getRoboto(
                            FontWeight.w400,
                            14,
                            primaryColor,
                          ),
                          itemPadding: 30,
                          isVisible: true,
                          position: LegendPosition.bottom,
                        ),
                      ),
                    ],
                  ),
                  const Expanded(flex: 4, child: SizedBox()),
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
