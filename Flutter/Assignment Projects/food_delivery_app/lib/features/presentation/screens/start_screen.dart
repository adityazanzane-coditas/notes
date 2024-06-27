import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/features/presentation/screens/login_signup_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFF4B3A),
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/cart_screen/iwwa_swipeswipe.png'),
                  Padding(
                    padding: const EdgeInsets.only(left: 62.77, top: 30),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.white,
                          child: Image.asset(
                              'assets/start_screen/Group 3chef.png'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  const Padding(
                    padding: EdgeInsets.only(left: 51, right: 88),
                    child: Text(
                      'Food for Everyone',
                      style: TextStyle(
                          fontSize: 65,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'SFProRounded',
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 460.46,
              left: 212,
              child: Image.asset('assets/start_screen/face2.png'),
            ),
            Positioned(
              top: 610.46,
              left: 212,
              child: Image.asset(
                  'assets/start_screen/Rectangle 5linearGradient2.png'),
            ),
            Positioned(
              top: 366.34,
              child: Image.asset('assets/start_screen/face1.png'),
            ),
            Positioned(
              top: 596.34,
              child: Image.asset(
                  'assets/start_screen/Rectangle 3linearGradient.png'),
            ),
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginSignupScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.red,
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 120, vertical: 23),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Get starteed',
                    style: TextStyle(
                      fontFamily: 'SFProRounded',
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
