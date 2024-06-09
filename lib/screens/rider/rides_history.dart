import 'package:flutter/material.dart';
import 'package:pickme/res/app_constants.dart';
import 'package:pickme/widgets/ride_status.dart';

import '../../widgets/route_widget.dart';

class RidesHistoryPage extends StatefulWidget {
  const RidesHistoryPage({Key? key}) : super(key: key);


  @override
  State<RidesHistoryPage> createState() => _RidesHistoryPageState();
}

class _RidesHistoryPageState extends State<RidesHistoryPage> {
  final List<Map<String, dynamic>> routes = [
    {
      'source': 'Nasr City',
      'destination': 'ASU Campus',
      'driverName': 'Ahmed Gamal',
      'driverPhoto': 'assets/driver.jpg',
      'date': '2023-11-20',
      'time': '07:30 AM',
      'price': 30.0,
    },


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rides History'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: ListView.separated(
          itemCount: routes.length,
          shrinkWrap: true,
          separatorBuilder: (BuildContext context, int index) =>
          const SizedBox(height: 10.0,),
          itemBuilder: (BuildContext context, int index) {
            var route = routes[index];

            return const RideStatusWidget();
          },
        ),
      ),
    );
  }
}