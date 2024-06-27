import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pootracker/core/themes/colors.dart';
import 'package:pootracker/core/themes/fonts.dart';

class TaskCard extends StatelessWidget {
  final String type;
  final String task;
  final String time;
  final double temperature;
  final String weatherIcon;
  final List<double> gradientStops;
  final String totalDuration;
  final String startDuration;
  final String endDuration;
  final String maxDuration;
  final double timeWidth1;
  final double timeWidth2;
  final double timeWidth3;

  const TaskCard({
    super.key,
    required this.type,
    required this.task,
    required this.time,
    required this.temperature,
    required this.weatherIcon,
    required this.gradientStops,
    required this.totalDuration,
    required this.startDuration,
    required this.endDuration,
    required this.maxDuration,
    required this.timeWidth1,
    required this.timeWidth2,
    required this.timeWidth3,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 23.0, vertical: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              offset: const Offset(0, 3),
            ),
          ],
          border: Border.all(color: Colors.white)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 10),
                child: SvgPicture.asset(type),
              ),
              Row(
                children: [
                  Text(
                    time,
                    style: getRoboto(FontWeight.w400, 16, thirdTextColor),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Row(
                    children: [
                      Text(
                        '${temperature.toStringAsFixed(0)}°C',
                        style: getRoboto(FontWeight.w400, 16, thirdTextColor),
                      ),
                      const SizedBox(width: 4.0),
                      SvgPicture.asset(weatherIcon),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                task,
                style: getRoboto(FontWeight.w500, 20, darkTextColor),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: const [
                  Color(0xFFEEA46B),
                  Color(0xFF0FAA51),
                  Color(0xFFEBEBEB),
                ],
                stops: gradientStops,
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: const LinearProgressIndicator(
              value: 0.78 / 0.75,
              backgroundColor: Colors.transparent,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.transparent),
            ),
          ),
          const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    startDuration,
                    style: getRoboto(FontWeight.w300, 10, subColor),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: timeWidth1),
                  Text(
                    totalDuration,
                    style: getRoboto(FontWeight.w300, 10, secondTextColor),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: timeWidth2),
                  Text(
                    endDuration,
                    style: getRoboto(FontWeight.w300, 10, primaryColor),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: timeWidth3),
                  Text(
                    maxDuration,
                    style: getRoboto(FontWeight.w300, 10, secondTextColor),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
