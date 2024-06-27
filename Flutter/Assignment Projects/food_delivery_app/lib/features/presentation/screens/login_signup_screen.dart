import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/presentation/screens/home_screen.dart';

class LoginSignupScreen extends StatelessWidget {
  const LoginSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(244, 249, 249, 249),
      body: DefaultTabController(
        length: 2,
        child: Stack(
          children: [
            Container(
              width: 430,
              height: 382,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(42.0),
                  bottomRight: Radius.circular(42.0),
                ),
              ),
              child: Image.asset('assets/login_screen/loginLogo.png'),
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 334),
              child: const TabBar(
                tabs: [
                  Tab(text: '              Login              '),
                  Tab(text: '              Sign-up              '),
                ],
                labelColor: Colors.black,
                indicatorColor: Colors.red,
                labelStyle: TextStyle(
                  fontFamily: 'SFProRounded',
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Form(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 362),
                          TextFormField(
                            initialValue: 'Dosamarvis@gmail.com',
                            style: const TextStyle(fontWeight: FontWeight.w600),
                            decoration: const InputDecoration(
                              labelText: 'Email address',
                              labelStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 147, 147, 147),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          TextFormField(
                            initialValue: '* * * * * * * *',
                            decoration: const InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 147, 147, 147),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          const SizedBox(height: 28),
                          const Row(
                            children: [
                              Text(
                                'Forgot passcode?',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 172),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: const Color(0xffFA4A0C),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 135,
                                vertical: 23,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 17,
                                fontFamily: 'SFProRounded',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
