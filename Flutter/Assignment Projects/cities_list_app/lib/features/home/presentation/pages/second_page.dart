import 'package:demo_app/features/home/presentation/bloc/list_bloc.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final List<City> selectedCities;

  const SecondPage({required this.selectedCities, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Selected Cities'),
      ),
      body: ListView.builder(
        itemCount: selectedCities.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('City ${selectedCities[index].names}'),
          );
        },
      ),
    );
  }
}
