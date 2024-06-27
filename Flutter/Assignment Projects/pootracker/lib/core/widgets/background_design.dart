import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset('assets/images/Group 46topVector.svg'),
          SvgPicture.asset(
            'assets/images/Group 55bottomVector.svg',
            color: Colors.black.withOpacity(0.1),
          ),
        ],
      ),
    );
  }
}
