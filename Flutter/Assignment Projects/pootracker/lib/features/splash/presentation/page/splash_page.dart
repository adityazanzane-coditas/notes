import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pootracker/core/themes/colors.dart';
import 'package:pootracker/core/themes/fonts.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Future.delayed(const Duration(seconds: 3), () {
    //   Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(builder: (context) => const LoginPage()),
    //   );
    // });

    return Scaffold(
      backgroundColor: const Color(0xff01AA4F),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(flex: 3, child: SizedBox()),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 129.0),
            child: Text(
              'PooTracker',
              style: getRoboto(FontWeight.w700, 30, lightTextColor),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 141.0, horizontal: 112),
            child: SvgPicture.asset('assets/images/logoappLogo.svg'),
          ),
          const Expanded(flex: 3, child: SizedBox()),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 56.0),
            child: Text(
              'version 1.0',
              style: getRoboto(FontWeight.w400, 16, lightTextColor),
              textAlign: TextAlign.center,
            ),
          ),
          const Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}
