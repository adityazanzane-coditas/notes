import 'package:flutter/material.dart';
import 'package:pootracker/core/themes/colors.dart';
import 'package:pootracker/features/log/presentation/page/create_new_log_page.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CreateNewLogPage()),
                );
              },
              child: Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(80),
                  ),
                ),
                // child: SvgPicture.asset(
                //   'assets/icons/Group 13plusIcon (1).svg',
                //   fit: BoxFit.contain,
                //   alignment: Alignment.center,
                // ),
                child: Icon(
                  Icons.add,
                  color: lightTextColor,
                  size: 38,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
