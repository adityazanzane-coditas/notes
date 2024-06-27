import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:interceptors_app/interceptors/auth_interceptors.dart';

class DataScreen extends StatefulWidget {
  @override
  _DataScreenState createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  final Dio _dio = Dio();
  String _data = 'No data';

  @override
  void initState() {
    super.initState();
    _dio.interceptors.add(AuthInterceptors());
  }

  Future<void> _fetchData() async {
    try {
      final response = await _dio.get('https://jsonplaceholder.typicode.com/posts/1');
      setState(() {
        _data = response.data.toString();
      });
    } catch (e) {
      setState(() {
        _data = 'Error fetching data';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: _fetchData,
              child: Text('Fetch Data'),
            ),
            SizedBox(height: 20),
            Text(_data),
          ],
        ),
      ),
    );
  }
}
