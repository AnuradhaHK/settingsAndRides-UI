import 'package:flutter/material.dart';
import 'package:ride_screen/Constants/color.dart';

class CancelledRides extends StatelessWidget {
  const CancelledRides({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kScaffoldColor,
      body: Text("Cancelled"),
    );
  }
}
