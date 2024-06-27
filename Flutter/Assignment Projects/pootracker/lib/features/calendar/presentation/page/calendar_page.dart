import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pootracker/core/themes/colors.dart';
import 'package:pootracker/core/themes/fonts.dart';
import 'package:pootracker/core/widgets/custom_add_button.dart';
import 'package:pootracker/core/widgets/share_widget.dart';
import 'package:pootracker/features/calendar/presentation/widgets/calendar_widget.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

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
      backgroundColor: lightTextColor,
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
                          Text('Calendar',
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
                      )
                    ],
                  ),
                  const CalendarWidget(),
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
