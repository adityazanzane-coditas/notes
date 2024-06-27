import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pootracker/core/themes/colors.dart';
import 'package:pootracker/core/themes/fonts.dart';
import 'package:pootracker/features/log/presentation/widgets/poop_color.dart';
import 'package:pootracker/features/log/presentation/widgets/poop_icon_grid.dart';
import 'package:pootracker/features/dashboard/presentation/page/dashboard_page.dart';

class CreateLogPage extends StatelessWidget {
  const CreateLogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Create Log',
                              style:
                                  getRoboto(FontWeight.w700, 30, primaryColor)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30.0, horizontal: 15),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                  side: const BorderSide(
                                      color: Color(0xffBDBDBD))),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.calendar_month_outlined,
                                    color: Color(0xffBDBDBD),
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    '2020/06/06',
                                    style: getRoboto(
                                        FontWeight.w400, 20, thirdTextColor),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 20),
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                  side: const BorderSide(
                                      color: Color(0xffBDBDBD))),
                              child: Text(
                                '10:20 - 10:30 am',
                                style: getRoboto(
                                    FontWeight.w400, 20, thirdTextColor),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Type',
                            style:
                                getRoboto(FontWeight.w700, 20, secondTextColor),
                          ),
                        ],
                      ),
                    ),
                    const PoopIconGrid(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Colour',
                            style:
                                getRoboto(FontWeight.w700, 20, secondTextColor),
                          ),
                        ],
                      ),
                    ),
                    const PoopColour(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: Text('Memo',
                          style:
                              getRoboto(FontWeight.w700, 20, secondTextColor)),
                    ),
                    Card(
                      elevation: 0.1,
                      color: const Color(0xffF5F7F9),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 18.0),
                          child: Text(
                              'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Quisque suscipit fringilla tortor.\nNulla est libero.',
                              style: getRoboto(
                                  FontWeight.w400, 16, darkTextColor)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 65,
                          height: 56,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.white,
                              width: 1,
                            ),
                          ),
                          child: const Icon(
                            Icons.broken_image_outlined,
                            size: 30,
                            color: Color(0xffBDBDBD),
                          ),
                        ),
                        Container(
                          width: 65,
                          height: 56,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.white,
                              width: 1,
                            ),
                          ),
                          child: const Icon(
                            Icons.broken_image_outlined,
                            size: 30,
                            color: Color(0xffBDBDBD),
                          ),
                        ),
                        Container(
                          width: 65,
                          height: 56,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.white,
                              width: 1,
                            ),
                          ),
                          child: const Icon(
                            Icons.broken_image_outlined,
                            size: 30,
                            color: Color(0xffBDBDBD),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Cancel',
                    style: getRoboto(FontWeight.w700, 16, thirdTextColor),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DashboardPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    minimumSize: const Size(190, 50),
                  ),
                  icon: const Icon(Icons.add, color: Colors.white),
                  label: Text(
                    'Create',
                    style: getRoboto(FontWeight.w700, 16, lightTextColor),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
