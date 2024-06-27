import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/presentation/screens/cart_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            fontFamily: 'SFProRounded',
          ),
        ),
      ),
      home: const CartScreen(),
    );
  }
}
