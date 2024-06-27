import 'package:flutter/material.dart';
import 'package:pootracker/features/log/presentation/page/create_log_page.dart';
import 'package:pootracker/features/login/presentation/page/login_page.dart';
import 'package:pootracker/features/splash/presentation/page/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CreateLogPage(),
    );
  }
}
