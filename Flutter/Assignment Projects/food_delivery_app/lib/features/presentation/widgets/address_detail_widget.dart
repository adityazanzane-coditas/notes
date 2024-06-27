import 'package:flutter/material.dart';

class AddressDetailsWidget extends StatelessWidget {
  const AddressDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0),
      child: Card(
        color: Colors.white,
        elevation: 0.1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(23.0),
        ),
        child: const Column(
          children: [
            ListTile(
              title: Text(
                'Marvis Kparobo',
                style: TextStyle(
                  fontFamily: 'SFProRounded',
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Divider(
              height: 0,
              indent: 16,
              endIndent: 52,
            ),
            ListTile(
              title: Text(
                'Km 5 refinery road oppsite re public road, effurun, delta state',
              ),
            ),
            Divider(
              height: 0,
              indent: 16,
              endIndent: 52,
            ),
            ListTile(
              title: Text('+234 9011039271'),
            ),
          ],
        ),
      ),
    );
  }
}
