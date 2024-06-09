import 'package:flutter/material.dart';
import 'package:pickme/res/app_constants.dart';

import '../../widgets/route_widget.dart';

class AvailableRidesPage extends StatefulWidget {
  const AvailableRidesPage({Key? key}) : super(key: key);


  @override
  State<AvailableRidesPage> createState() => _AvailableRidesPageState();
}

class _AvailableRidesPageState extends State<AvailableRidesPage> {
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
    {
      'source': 'El Obour',
      'destination': 'ASU Campus',
      'driverName': 'Mohamed Ayman',
      'driverPhoto': 'assets/driver.jpg',
      'date': '2023-11-20',
      'time': '07:30 AM',
      'price': 45.0,
    },
    {
      'source': 'Maadi',
      'destination': 'ASU Campus',
      'driverName': 'Sara Hany',
      'driverPhoto': 'assets/driver.jpg',
      'date': '2023-11-22',
      'time': '07:30 AM',
      'price': 20.0,
    },
    {},
    {},
    {},
    {},
    {},
    {},
    {}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Available Rides'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: ListView.separated(
          itemCount: routes.length,
          shrinkWrap: true,
          separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 10.0,),
          itemBuilder: (BuildContext context, int index) {
            var route = routes[index];

            return const RouteWidget();
            // return ListTile(
            //   title: Text('${route['source']} to ${route['destination']}'),
            //   subtitle: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Text('Driver: ${route['driverName']}'),
            //       Text('Date: ${route['date']}'),
            //       Text('Time: ${route['time']}'),
            //       Text('Price: LE${route['price']}'),
            //     ],
            //   ),
            //   leading: CircleAvatar(
            //     backgroundImage: AssetImage(route['driverPhoto']),
            //   ),
            //   trailing: ElevatedButton(
            //     onPressed: () {
            //       // Handle join ride.dart button press
            //       // You can navigate to the next screen or perform any action here
            //     },
            //     child: const Text('Join Ride'),
            //   ),
            // );
          },
        ),
      ),
    );
  }

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       backgroundColor: Constants.MAIN_COLOR,
//       title: const Text("Available Routes"),
//     ),
//     body: SingleChildScrollView(
//       child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             ListView.builder(
//               itemCount: 10,
//               shrinkWrap: true,
//               itemBuilder: (context, index) {
//                 return ;
//               },
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }
}
//
// Widget createItemWidget(var context) {
//   return InkWell(
//     onTap: () {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//             builder: (context) =>
//                 const AsteroidDataPage(title: 'Asteroid Radar')),
//       );
//     },
//     child: Container(
//       color: Colors.black,
//       height: 90.0,
//       //width: double.infinity,
//       padding: EdgeInsets.all(20.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const Text(
//                 '68437 (2011 KB67)',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 18.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const Text(
//                 '2020-2-8',
//                 style: TextStyle(
//                   color: Colors.grey,
//                   fontSize: 18.0,
//                 ),
//               ),
//             ],
//           ),
//           Icon(
//             Icons.tag_faces,
//             color: Colors.white,
//           ),
//         ],
//       ),
//     ),
//   );
// }
