import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pootracker/core/themes/colors.dart';
import 'package:pootracker/features/log/presentation/page/create_log_page.dart';

// Define your primaryColor and lightTextColor here

class CreateNewLogPage extends StatefulWidget {
  const CreateNewLogPage({super.key});

  @override
  _CreateNewLogPageState createState() => _CreateNewLogPageState();
}

class _CreateNewLogPageState extends State<CreateNewLogPage> {
  int _hours = 0;
  int _minutes = 0;
  int _seconds = 0;
  Timer? _timer;
  bool _isTimerRunning = false;
  bool _showTimer = false;

  @override
  void dispose() {
    _stopTimer();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _seconds++;
        if (_seconds == 60) {
          _minutes++;
          _seconds = 0;
        }
        if (_minutes == 60) {
          _hours++;
          _minutes = 0;
        }
      });
    });
    setState(() {
      _isTimerRunning = true;
      _showTimer = true;
    });
  }

  void _stopTimer() {
    _timer?.cancel();
    setState(() {
      _isTimerRunning = false;
      _showTimer = false;
      _hours = 0;
      _minutes = 0;
      _seconds = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
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
              padding: const EdgeInsets.symmetric(horizontal: 44.0),
              child: Column(
                children: [
                  const Expanded(child: SizedBox()),
                  Row(
                    children: [
                      Text('Create\nNew Log',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 30,
                            color: lightTextColor,
                          )),
                    ],
                  ),
                  const Expanded(flex: 2, child: SizedBox()),
                  _showTimer
                      ? Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '$_hours:${_minutes.toString().padLeft(2, '0')}:${_seconds.toString().padLeft(2, '0')}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 85,
                                    color: lightTextColor,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: OutlinedButton(
                                    onPressed: _isTimerRunning
                                        ? _stopTimer
                                        : _startTimer,
                                    style: OutlinedButton.styleFrom(
                                      side: const BorderSide(
                                          color: Colors.white, width: 2),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 16, horizontal: 54),
                                    ),
                                    child: Text(
                                      _isTimerRunning
                                          ? '          Done          '
                                          : 'Start now',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 25,
                                        color: lightTextColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      : Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: ElevatedButton.icon(
                                    onPressed: _startTimer,
                                    icon: SvgPicture.asset(
                                        'assets/icons/Groupclock.svg'),
                                    label: Text('Start Now',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 30,
                                          color: primaryColor,
                                        )),
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 14, horizontal: 54),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('or',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      color: lightTextColor,
                                    )),
                              ],
                            ),
                            const SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: OutlinedButton.icon(
                                    onPressed: () {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const CreateLogPage()),
                                      );
                                    },
                                    icon: const Icon(
                                      Icons.history,
                                      color: Colors.white,
                                    ),
                                    label: Text('Create old Log',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 25,
                                          color: lightTextColor,
                                        )),
                                    style: OutlinedButton.styleFrom(
                                      side: const BorderSide(
                                          color: Colors.white, width: 2),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 14, horizontal: 54),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                  const Expanded(flex: 4, child: SizedBox()),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
