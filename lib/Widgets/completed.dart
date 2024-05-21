import 'package:flutter/material.dart';

import 'package:ride_screen/Constants/color.dart';
import 'package:ride_screen/models/ridedetails.dart';

class CompletedRides extends StatelessWidget {
  const CompletedRides({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldColor,
      body: ListView.builder(
          itemCount: completedRides.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 100,
              color: Colors.transparent,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(completedRides[index].datetime),
                      // Container(
                      //   height: 28,
                      //   width: 20,
                      //   decoration: BoxDecoration(color: successColor),
                      //   child: Row(
                      //     children: const [
                      //       Text(
                      //         'Completed',
                      //         style: TextStyle(color: Colors.green),
                      //       ),
                      //     ],
                      //   ),
                      // )
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}
