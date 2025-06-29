import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class GeolocatorPackage extends StatelessWidget {
  const GeolocatorPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Geolocator package')),
      body: Center(
        child: ElevatedButton(
          child: Text('Get Location'),
          onPressed: () async {
            LocationPermission permission = await Geolocator.checkPermission();

            if (permission == LocationPermission.denied ||
                permission == LocationPermission.deniedForever) {
              permission = await Geolocator.requestPermission();

              if (permission == LocationPermission.denied ||
                  permission == LocationPermission.deniedForever) {
                return;
              }
            }

            Position position = await Geolocator.getCurrentPosition();

            position.isMocked;

            print(
              "latitude: ${position.latitude} , longitude: ${position.longitude}",
            );

            // AppLauncher.openGoogleMap(position.latitude, position.longitude);

            double distance1 = Geolocator.distanceBetween(
              position.latitude,
              position.longitude,
              32.9880814,
              35.8949211,
            );

            print("distance1: $distance1");

            double distance2 = Geolocator.distanceBetween(
              32.9880814,
              35.8949211,
              position.latitude,
              position.longitude,
            );

            print("distance2: $distance2");
          },
        ),
      ),
    );
  }
}
