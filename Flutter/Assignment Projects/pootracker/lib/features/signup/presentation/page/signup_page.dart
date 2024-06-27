import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pootracker/core/themes/colors.dart';
import 'package:pootracker/core/themes/fonts.dart';
import 'package:pootracker/features/login/presentation/page/login_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _agreeTermsAndPolicy = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F7F9),
      body: Stack(
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              double containerHeight = constraints.maxHeight * 0.30;
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              children: [
                const Expanded(flex: 2, child: SizedBox()),
                SvgPicture.asset('assets/icons/Group 119profileIcon.svg'),
                const Expanded(flex: 5, child: SizedBox()),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(flex: 3, child: SizedBox()),
                Text(
                  'Create\nNew Account',
                  style: getRoboto(FontWeight.w700, 30, primaryColor),
                ),
                const Expanded(flex: 5, child: SizedBox()),
                Text('Sign Up',
                    style: getRoboto(FontWeight.w700, 20, secondTextColor)),
                const Expanded(flex: 1, child: SizedBox()),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your email',
                    hintStyle: getRoboto(FontWeight.w400, 16, secondTextColor),
                    filled: true,
                    fillColor: const Color(0xffF5F7F9),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE0E0E0)),
                    ),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE0E0E0)),
                    ),
                  ),
                ),
                const Expanded(flex: 1, child: SizedBox()),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                    hintStyle: getRoboto(FontWeight.w400, 16, secondTextColor),
                    filled: true,
                    fillColor: const Color(0xffF5F7F9),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE0E0E0)),
                    ),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE0E0E0)),
                    ),
                  ),
                  obscureText: true,
                ),
                const Expanded(flex: 1, child: SizedBox()),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Re Enter your password',
                    hintStyle: getRoboto(FontWeight.w400, 16, secondTextColor),
                    filled: true,
                    fillColor: const Color(0xffF5F7F9),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE0E0E0)),
                    ),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE0E0E0)),
                    ),
                  ),
                  obscureText: true,
                ),
                const Expanded(flex: 1, child: SizedBox()),
                Row(
                  children: [
                    Checkbox(
                      value: _agreeTermsAndPolicy,
                      onChanged: (value) {
                        setState(() {
                          _agreeTermsAndPolicy = value!;
                        });
                      },
                      checkColor: Colors.white,
                      activeColor: primaryColor,
                      side: const BorderSide(color: Color(0xff999999)),
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Agree app ',
                        style: getRoboto(
                          FontWeight.w400,
                          16,
                          thirdTextColor,
                        ),
                        children: [
                          TextSpan(
                            text: 'Policy',
                            style: getRoboto(
                              FontWeight.w400,
                              16,
                              thirdTextColor,
                            ).copyWith(decoration: TextDecoration.underline),
                          ),
                          TextSpan(
                            text: ' and ',
                            style: getRoboto(
                              FontWeight.w400,
                              16,
                              thirdTextColor,
                            ),
                          ),
                          TextSpan(
                            text: 'Term',
                            style: getRoboto(
                              FontWeight.w400,
                              16,
                              thirdTextColor,
                            ).copyWith(decoration: TextDecoration.underline),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Expanded(child: SizedBox()),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xff01AA4F)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        'Sign Up',
                        style: getRoboto(FontWeight.w700, 20, lightTextColor),
                      ),
                    ),
                  ),
                ),
                const Expanded(flex: 1, child: SizedBox()),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  },
                  child: Center(
                    child: Text(
                      'Login',
                      style: getRoboto(FontWeight.w400, 20, thirdTextColor),
                    ),
                  ),
                ),
                const Expanded(flex: 2, child: SizedBox()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
