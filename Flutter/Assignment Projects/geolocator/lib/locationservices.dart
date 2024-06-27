import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class LocationServices extends StatefulWidget {
  const LocationServices({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LocationServicesState();
  }
}

class _LocationServicesState extends State<LocationServices> {
  String stAddress = '', stPlacemark = '', latitude = '', longitude = '';

  getCurrentLocation() async {
    try {
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied ||
          permission == LocationPermission.deniedForever) {
        print('Location denied');
        await Geolocator.requestPermission();
      } else {
        Position currentPosition = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.bestForNavigation);
        print("Latitude: ${currentPosition.latitude.toString()}");
        print("Longitude: ${currentPosition.longitude.toString()}");

        List<Placemark> placemarks = await placemarkFromCoordinates(
            currentPosition.latitude, currentPosition.longitude);
        setState(() {
          latitude = currentPosition.latitude.toString();
          longitude = currentPosition.longitude.toString();
          stAddress =
              '${currentPosition.latitude}, ${currentPosition.longitude}';
          stPlacemark =
              "${placemarks.reversed.last.country} ${placemarks.reversed.last.locality}";
        });
      }
    } catch (e) {
      print('Error getting current location: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GeoLocator"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  getCurrentLocation();
                },
                child: const Text(
                  'Get Location',
                  style: TextStyle(color: Colors.black),
                )),
            Text('Latitude: $latitude'),
            Text('Longitude: $longitude'),
            Text(stAddress),
            Text(stPlacemark),
            GestureDetector(
              onTap: () async {
                try {
                  List<Location> locations =
                      await locationFromAddress("Gronausestraat 710, Enschede");
                  log(locations.toString());
                  setState(() {
                    stAddress =
                        '${locations.last.latitude.toString()}, ${locations.last.longitude.toString()}';
                  });
                } catch (e) {
                  print('Error converting address to location: $e');
                }
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                  ),
                  child: const Center(child: Text('Convert Address')),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
