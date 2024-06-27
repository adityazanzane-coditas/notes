import 'package:demo_app/features/home/presentation/bloc/list_bloc.dart';
import 'package:demo_app/features/home/presentation/pages/second_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('List'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cities.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Checkbox(
                    tristate: false,
                    value: cities[index].isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        cities[index].isChecked = value!;
                      });
                    },
                  ),
                  title: Text('City ${cities[index].names}'),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              selectedCities = cities.where((city) => city.isChecked).toList();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      SecondPage(selectedCities: selectedCities),
                ),
              );
            },
            child: const Text('Next Page'),
          ),
        ],
      ),
    );
  }
}
