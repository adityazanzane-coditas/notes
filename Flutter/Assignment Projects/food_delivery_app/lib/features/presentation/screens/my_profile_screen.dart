import 'package:flutter/material.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  _MyProfileScreenState createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  String paymentMethod = 'Card';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F8),
      appBar: AppBar(
        backgroundColor: const Color(0xffF5F5F8),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'My profile',
          style: TextStyle(
            fontFamily: 'SFProRounded',
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 56.0, top: 16, right: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Information',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                fontFamily: 'SFProRounded',
              ),
            ),
            const SizedBox(height: 8.0),
            SizedBox(
              width: 315,
              height: 133,
              child: Card(
                elevation: 0.1,
                color: Colors.white,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/profile_page/Rectangle 6profileIcon.png',
                            height: 60,
                            width: 60,
                          ),
                        ],
                      ),
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Marvis Ighedosa',
                              style: TextStyle(
                                fontFamily: 'SFProRounded',
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 6.0),
                            Text(
                              'dosamarvic@gmail.com',
                              style: TextStyle(
                                fontFamily: 'SFProRounded',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff808080),
                              ),
                            ),
                            SizedBox(height: 6.0),
                            Text(
                              'No 15 uti street off ovie palace road effurun delta state',
                              style: TextStyle(
                                fontFamily: 'SFProRounded',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff808080),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 66.0),
            const Text(
              'Payment Method',
              style: TextStyle(
                fontFamily: 'SFProRounded',
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 18.0),
            SizedBox(
              height: 230,
              width: 400,
              child: Card(
                elevation: 0.1,
                color: Colors.white,
                child: Column(
                  children: [
                    RadioListTile(
                      title: Row(
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.credit_card,
                                color: Colors.white,
                                size: 18,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Card',
                            style: TextStyle(
                              fontFamily: 'SFProRounded',
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                      value: 'Card',
                      groupValue: paymentMethod,
                      onChanged: (value) {
                        setState(() {
                          paymentMethod = value.toString();
                        });
                      },
                      activeColor: const Color(0xffF47B0A),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Divider(
                      height: 0,
                      indent: 56,
                      endIndent: 42,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    RadioListTile(
                      title: Row(
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              color: const Color(0xffEB4796),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.account_balance,
                                color: Colors.white,
                                size: 18,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Bank Account',
                            style: TextStyle(
                              fontFamily: 'SFProRounded',
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                      value: 'Bank Account',
                      groupValue: paymentMethod,
                      onChanged: (value) {
                        setState(() {
                          paymentMethod = value.toString();
                        });
                      },
                      activeColor: Colors.orange,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Divider(
                      height: 0,
                      indent: 56,
                      endIndent: 42,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    RadioListTile(
                      title: Row(
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              color: const Color(0xff0038FF),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.paypal_outlined,
                                color: Colors.white,
                                size: 18,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Paypal',
                            style: TextStyle(
                              fontFamily: 'SFProRounded',
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                      value: 'Paypal',
                      groupValue: paymentMethod,
                      onChanged: (value) {
                        setState(() {
                          paymentMethod = value.toString();
                        });
                      },
                      activeColor: Colors.orange,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 180,
            ),
            Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color(0xffFA4A0C),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 115,
                      vertical: 20,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Updated',
                    style: TextStyle(
                      fontFamily: 'SFProRounded',
                      fontWeight: FontWeight.w700,
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
