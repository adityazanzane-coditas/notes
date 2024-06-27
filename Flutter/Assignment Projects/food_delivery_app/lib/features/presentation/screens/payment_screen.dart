import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key});

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String paymentMethod = 'Card'; // Track selected payment method

  String deliveryMethod = 'Door delivery'; // Track selected delivery method

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
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 195.0),
            child: Text(
              'Checkout',
              style: TextStyle(
                fontFamily: 'SFProRounded',
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(48.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Payment',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 26),
              const Text(
                'Payment method',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.white,
                  elevation: 0.1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(23.0),
                  ),
                  child: Column(
                    children: [
                      RadioListTile(
                        title: Row(
                          children: [
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                color: const Color(0xffF47B0A),
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
                            const Text('Card'),
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
                            const Text('Bank Account'),
                          ],
                        ),
                        value: 'Bank Account',
                        groupValue: paymentMethod,
                        onChanged: (value) {
                          setState(() {
                            paymentMethod = value.toString();
                          });
                        },
                        activeColor: const Color(0xffF47B0A),
                      ),
                      const SizedBox(
                        height: 56,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Delivery method.',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.white,
                  elevation: 0.1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(23.0),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 14),
                      RadioListTile(
                        title: const Text('Door delivery'),
                        value: 'Door delivery',
                        groupValue: deliveryMethod,
                        onChanged: (value) {
                          setState(() {
                            deliveryMethod = value.toString();
                          });
                        },
                        activeColor: const Color(0xffF47B0A),
                      ),
                      const Divider(
                        height: 18,
                        indent: 56,
                        endIndent: 42,
                      ),
                      RadioListTile(
                        title: const Text('Pick up'),
                        value: 'Pick up',
                        groupValue: deliveryMethod,
                        onChanged: (value) {
                          setState(() {
                            deliveryMethod = value.toString();
                          });
                        },
                        activeColor: const Color(0xffF47B0A),
                      ),
                      const SizedBox(height: 14),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 38),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '23,000',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 48),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Padding(
                          padding: const EdgeInsets.all(42.0),
                          child: Dialog(
                            backgroundColor: Colors.white,
                            elevation: 0.1,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8.0, horizontal: 4.0),
                                  decoration: const BoxDecoration(
                                    color: Color(0xffEDEDED),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(25.0),
                                      topRight: Radius.circular(25.0),
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.only(
                                        left: 20.0, top: 12, bottom: 12),
                                    child: Text(
                                      'Please note',
                                      style: TextStyle(
                                        fontFamily: 'SFProRounded',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 16.0),
                                const Padding(
                                  padding:
                                      EdgeInsets.only(left: 40.0, right: 40),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'DELIVERY TO MAINLAND',
                                        style: TextStyle(
                                          fontFamily: 'SFProRounded',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                          color: Color(0xff808080),
                                        ),
                                      ),
                                      Text(
                                        'N1000 - N2000',
                                        style: TextStyle(
                                          fontFamily: 'SFProRounded',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 17,
                                        ),
                                      ),
                                      Divider(),
                                      Text(
                                        'DELIVERY TO ISLAND',
                                        style: TextStyle(
                                          fontFamily: 'SFProRounded',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                          color: Color(0xff808080),
                                        ),
                                      ),
                                      Text(
                                        'N2000 - N3000',
                                        style: TextStyle(
                                          fontFamily: 'SFProRounded',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 28.0),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.of(context).pop(),
                                      child: const Text(
                                        'Cancel',
                                        style: TextStyle(
                                          fontFamily: 'SFProRounded',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 17,
                                          color: Color(0xff808080),
                                        ),
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xffFA4A0C),
                                      ),
                                      child: const Text(
                                        'Proceed',
                                        style: TextStyle(
                                          fontFamily: 'SFProRounded',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 17,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffFA4A0C),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 24),
                  ),
                  child: const Text(
                    'Proceed to payment',
                    style: TextStyle(
                      fontFamily: 'SFProRounded',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
