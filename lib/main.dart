import 'package:flutter/material.dart';
import 'package:ride_screen/Screens/ridedetails.dart';
// import 'package:ride_screen/Screens/rides.dart';
// import 'package:ride_screen/Screens/rides.dart';
// import 'package:ride_screen/Screens/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Plus Jakarta Sans',
          textTheme: const TextTheme(
            titleLarge: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Color(0xFF132026),
            ),
            titleMedium: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xFF132026),
            ),
            bodyMedium: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF6C757D)),
            labelLarge: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xFF3AA264)),
          )),
      // home: const SettingsPage(),
      // home: const Rides(),
      home: const RideDetails(),
    );
  }
}
