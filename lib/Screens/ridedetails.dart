import 'package:flutter/material.dart';
import 'package:ride_screen/Constants/color.dart';
import 'package:ride_screen/Widgets/cancelled.dart';
import 'package:ride_screen/Widgets/completed.dart';

class RideDetails extends StatefulWidget {
  const RideDetails({super.key});

  @override
  State<RideDetails> createState() => _RideDetailsState();
}

class _RideDetailsState extends State<RideDetails>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldColor,
      appBar: AppBar(
        backgroundColor: kScaffoldColor,
        title: Text(
          'My Rides',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        centerTitle: true,
        toolbarHeight: 100,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Container(
                  // height: 56,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: TabBar(
                          labelStyle: Theme.of(context).textTheme.titleMedium,
                          indicatorColor: kButtonColor,
                          indicatorSize: TabBarIndicatorSize.tab,
                          indicator: BoxDecoration(
                              color: kButtonColor,
                              borderRadius: BorderRadius.circular(8)),
                          controller: tabController,
                          tabs: const [
                            Tab(
                              text: "Completed",
                            ),
                            Tab(
                              text: "Cancelled",
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: TabBarView(
                  controller: tabController,
                  children: const [CompletedRides(), CancelledRides()],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
