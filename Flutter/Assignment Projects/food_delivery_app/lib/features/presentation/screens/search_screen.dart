import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          const Center(
            child: Text(
              'Found 6 results',
              style: TextStyle(
                fontFamily: 'SFProRounded',
                fontWeight: FontWeight.w700,
                fontSize: 28,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Row(
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: 300, // Adjust width as needed
                      height: 300, // Adjust height as needed
                      child: Image.asset('assets/pages/Group 4result1.png'),
                    ),
                    SizedBox(
                      width: 300, // Adjust width as needed
                      height: 300, // Adjust height as needed
                      child: Image.asset('assets/pages/Group 6result3.png'),
                    ),
                    SizedBox(
                      width: 300, // Adjust width as needed
                      height: 170, // Adjust height as needed
                      child: Image.asset('assets/pages/Group 4result5.png'),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 300, // Adjust width as needed
                      height: 300, // Adjust height as needed
                      child: Image.asset('assets/pages/Group 4result1.png'),
                    ),
                    SizedBox(
                      width: 300, // Adjust width as needed
                      height: 300, // Adjust height as needed
                      child: Image.asset('assets/pages/Group 6result3.png'),
                    ),
                    SizedBox(
                      width: 300, // Adjust width as needed
                      height: 170, // Adjust height as needed
                      child: Image.asset('assets/pages/Group 4result5.png'),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
