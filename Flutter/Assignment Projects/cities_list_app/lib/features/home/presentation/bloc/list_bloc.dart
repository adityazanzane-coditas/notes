class City {
  String names;
  bool isChecked;

  City({required this.names, required this.isChecked});
}

List<City> cities = [
  City(names: 'Pune', isChecked: true),
  City(names: 'Mumbai', isChecked: false),
  City(names: 'Delhi', isChecked: true),
  City(names: 'Jaipur', isChecked: false),
  City(names: 'Rajkot', isChecked: true),
  City(names: 'Panji', isChecked: false),
];

List<City> selectedCities = [];
