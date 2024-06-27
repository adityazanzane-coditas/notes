// 1. Class - Engine
// The Engine class has attributes like fuel type(should be an Enum), horsepower, and efficiency.
// The constructor initializes these attributes when creating an Engine object.
// Methods like start, stop, and displayDetails are included to perform actions related to the engine.
// In the main function, create the engine object and execute start, stop and display details methods

// 2. Class - Car Engine
// Class CarEngine should be derived from Engine class.
// Should have attributes of Engine Class and additional attribute ‘cylinders’ and ‘cc’ and ‘model’’
// Override the display details to include cylinder details
// In the main function create the carEngine object and execute start, stop and display details.
// Display details should print `Model - Car Engine` followed by the other details.
// Create Factory methods for creating xuv300, xuv500, xuv700 with prefilled data for horsePower, efficiency, cylinders, cc and model(to be set to the variant xuv300, xuv500 and xuv700 respectively) and required params for fuel type.
// Create objects for xuv300Petrol, xuv500Petrol and xuv700Petrol and similarly for diesel variants.

// 3. Convert Engine to an Abstract class.
// Override  start, stop, and displayDetails in CarEngine

// 4. Interface - Service
// Create an interface Service
// Define a checkEngineCondition method
// Engine class should implement Service Interface
// Car Engine class should override checkEngineCondition and print Good for all petrol vehicles and Bad Diesel vehicles

// 5. Class - Truck Engine
// Create a TruckEngine class and should be derived from Engine class
// Should have attributes of Engine Class and additional attribute ‘Cargo’ capacity
// Override the display details to include cargo capacity details. Display details should print `Truck Engine` followed by the other details.
// In the main function create the carEngine object and execute start, stop and display details.

// 6. Class - SuperCar Engine
// Class SuperCar Engine should be derived from the CarEngine class.
// Should have attributes of CarEngine and additional attributes ‘hasTurbo(bool)’, specialFeatures(list), topSpeed
// Display details should print `Model - SuperCar Engine` followed by the other details.

// 7. Extension - CarExtension
// Create an Extension on Car class with method convertToSuperCar()
// convertToSuperCar extension should convert the Car obj to a Super Car object.
// Create a xuv500 object using the factory method Car.xuv500(FuelType.petrol)
// Execute xuv500.display details().
// Expected output is - xuv500 - Car Engine followed by other details
// Assign xuv500 = xuv500.convertToSuperCar()
// Execute xuv500.displayDetails()
// Expected output is - xuv500 - SuperCar Engine followed by other details

// 1. Class - Engine

enum FuelType { Petrol, Diesel, Electric }

// 3. Convert Engine to an Abstract class.
//abstract class Engine which implements the Service

abstract class Engine implements Service {
  FuelType fuelType;
  int horsepower;
  double efficiency;

  Engine(this.fuelType, this.horsepower, this.efficiency);

  @override
  void checkEngineCondition() {
    print("Good for all ");
  }

  void start() {
    print('Engine started!');
  }

  void stop() {
    print('Engine stopped!');
  }

  void displayDetails() {
    print(
        'Engine Fuel type is: ${fuelType.toString().split('.').last.toLowerCase()}');
    print('Engine Horsepower is: $horsepower');
    print('Engine Efficiency is: $efficiency');
  }
}

// 2. Class - Car Engine

class CarEngine extends Engine {
  int cylinders;
  int cc;
  String model;

  CarEngine(
    this.cylinders,
    this.cc,
    this.model,
    FuelType fuelType,
    int horsepower,
    double efficiency,
  ) : super(FuelType.Petrol, horsepower, efficiency);

  @override
  void checkEngineCondition() {
    if (FuelType == FuelType.Petrol) {
      print('Good for all petrol vehicles');
    } else if (FuelType == FuelType.Diesel) {
      print('Bad Diesel vehicles');
    }
  }

  @override
  void displayDetails() {
    print('Model - Car Engine');
    super.displayDetails();
    print('Model of the car is $model');
    print('Car contains $cylinders number of cylinders');
    print('CC of Car is: $cc');
  }
}

// Factory methods as xuv300, xuv500, xuv700

CarEngine xuv300(FuelType fuelType) {
  return CarEngine(4, 1200, 'XUV300', fuelType, 130, 0.69);
}

CarEngine xuv500(FuelType fuelType) {
  return CarEngine(6, 1500, 'XUV500', fuelType, 167, 0.78);
}

CarEngine xuv700(FuelType fuelType) {
  return CarEngine(8, 1800, 'XUV700', fuelType, 189, 0.88);
}

// 4. Interface - Service
abstract class Service {
  void checkEngineCondition();
}

// 5. Class - Truck Engine

class TruckEngine extends Engine {
  int cargoCapacity;

  TruckEngine(
      super.fuelType, super.horsepower, super.efficiency, this.cargoCapacity);

  @override
  void displayDetails() {
    super.displayDetails();
    print('Cargo capacity details $cargoCapacity');
  }
}

// 6. Class - SuperCar Engine

class SuperCarEngine extends CarEngine {
  bool hasTurbo;
  List<String> specialFeatures;
  int topSpeed;

  SuperCarEngine(
      this.hasTurbo,
      this.specialFeatures,
      this.topSpeed,
      super.cylinders,
      super.cc,
      super.model,
      super.fuelType,
      super.horsepower,
      super.efficiency);

  @override
  void displayDetails() {
    print('Model - SuperCar Engine');
    super.displayDetails();
    print('Additional Attributes are:-');
    print('Has Turbo Power: $hasTurbo');
    print('Special Features of SuperCar: $specialFeatures');
    print('Top Speed of the Super Car: $topSpeed');
  }
}

// 7. Extension - CarExtension

extension CarExtension on CarEngine {
  SuperCarEngine convertToSuperCar() {
    return SuperCarEngine(
        true,
        ['ADAS', 'High Beam Assist', 'Intelligent Speed'],
        150,
        cylinders,
        cc,
        model,
        fuelType,
        horsepower,
        efficiency);
  }
}

//main method
void main() {
  //Normal Engine
  CarEngine basicXUV300 = xuv300(FuelType.Petrol);

  //Details of carEngine
  basicXUV300.displayDetails();
  print('----------------------------');

  //Now converting to superCarEngine
  SuperCarEngine superXUV300 = basicXUV300.convertToSuperCar();

  //Details of supercar
  superXUV300.displayDetails();
  print('----------------------------');

  //Normal Engine
  CarEngine basicXUV500 = xuv500(FuelType.Petrol);

  //Details of carEngine
  basicXUV500.displayDetails();
  print('----------------------------');

  //Now converting to superCarEngine
  SuperCarEngine superXUV500 = basicXUV500.convertToSuperCar();

  //Details of supercar
  superXUV500.displayDetails();
  print('----------------------------');

  //Normal Engine
  CarEngine basicXUV700 = xuv700(FuelType.Petrol);

  //Details of carEngine
  basicXUV700.displayDetails();
  print('----------------------------');

  //Now converting to superCarEngine
  SuperCarEngine superXUV700 = basicXUV700.convertToSuperCar();

  //Details of supercar
  superXUV700.displayDetails();
  print('----------------------------');
}
