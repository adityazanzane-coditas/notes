import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'History',
          style: TextStyle(
            fontFamily: 'SFProRounded',
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 122,
            ),
            Image.asset('assets/pages/VectorhistoryImage.png'),
            const SizedBox(height: 26),
            const Text(
              'No history yet',
              style: TextStyle(
                fontFamily: 'SFProRounded',
                fontWeight: FontWeight.w600,
                fontSize: 32,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Hit the orange button down\nbelow to Create an order',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontFamily: 'SFProRounded',
                fontWeight: FontWeight.w600,
                fontSize: 19,
              ),
            ),
            const SizedBox(height: 272),
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
                        horizontal: 125, vertical: 23),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Start odering',
                    style: TextStyle(
                      fontFamily: 'SFProRounded',
                      fontWeight: FontWeight.w600,
                      fontSize: 19,
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
