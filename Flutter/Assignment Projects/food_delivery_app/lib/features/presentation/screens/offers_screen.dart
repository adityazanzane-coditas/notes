import 'package:flutter/material.dart';

class OfferScreen extends StatelessWidget {
  const OfferScreen({super.key});

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
      ),
      body: const Padding(
        padding: EdgeInsets.all(48.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My offers',
              style: TextStyle(
                fontFamily: 'SFProRounded',
                fontWeight: FontWeight.w600,
                fontSize: 34,
              ),
            ),
            SizedBox(height: 250),
            Center(
              child: Text(
                'ohh snap!  No offers yet',
                style: TextStyle(
                  fontFamily: 'SFProRounded',
                  fontWeight: FontWeight.w600,
                  fontSize: 28,
                ),
              ),
            ),
            SizedBox(height: 8),
            Center(
              child: Text(
                'Bella dose’t have any offers\nyet please check again.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 17,
                  fontFamily: 'SFProRounded',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 242),
          ],
        ),
      ),
    );
  }
}
