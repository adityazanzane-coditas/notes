import 'package:flutter/material.dart';

class DeliveryMethodWidget extends StatefulWidget {
  const DeliveryMethodWidget({super.key});


  @override
  _DeliveryMethodWidgetState createState() => _DeliveryMethodWidgetState();
}

class _DeliveryMethodWidgetState extends State<DeliveryMethodWidget> {
  String deliveryMethod = 'Door delivery';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0),
      child: Card(
        elevation: 0.1,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(23.0),
        ),
        child: Column(
          children: [
            RadioListTile(
              title: const Text('Door delivery'),
              value: 'Door delivery',
              groupValue: deliveryMethod,
              onChanged: (value) {
                setState(() {
                  deliveryMethod = value.toString();
                });
              },
              activeColor: Colors.orange,
            ),
            const Divider(
              height: 0,
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
              activeColor: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
