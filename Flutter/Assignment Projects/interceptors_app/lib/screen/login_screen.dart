import 'package:flutter/material.dart';
import 'package:interceptors_app/screen/data_screen.dart';
import 'package:interceptors_app/services/store.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _tokenController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _tokenController,
              decoration: const InputDecoration(labelText: 'Enter Token'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await Store.setToken(_tokenController.text);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => DataScreen()),
                );
              },
              child: const Text('Save Token'),
            ),
          ],
        ),
      ),
    );
  }
}
