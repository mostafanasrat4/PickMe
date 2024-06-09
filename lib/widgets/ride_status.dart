import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:pickme/res/app_constants.dart';
import 'package:pickme/services/firestore.dart';
import 'package:pickme/widgets/text_widget.dart';

class RideStatusWidget extends StatelessWidget {
  const RideStatusWidget({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Top half (Source, Destination, Price)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          Icon(Icons.my_location_outlined, size: 18.0),
                          SizedBox(width: 5.0),
                          myText('Ain Shams', 20.0, FontWeight.normal),
                        ]),
                        Row(
                          children: [
                            Icon(Icons.location_on_outlined, size: 20.0),
                            SizedBox(width: 5.0),
                            myText('Maadi', 20.0, FontWeight.normal),
                          ],
                        )
                      ],
                    ),
                    myText('30 LE', 24.0, FontWeight.bold),
                  ],
                ),
                SizedBox(height: 10.0),
                // Bottom half
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Driver Row
                        Row(
                          children: [
                            CircleAvatar(
                                radius: 16.0,
                                backgroundImage: NetworkImage(
                                    'https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/social-media-profile-photos-3.jpg')),
                            SizedBox(width: 10.0),
                            myText('Ahmed Ali', 16.0, FontWeight.normal)
                          ],
                        ),
                        SizedBox(height: 5.0),
                        //DateTime Row
                        Row(
                          children: [
                            Icon(Icons.date_range, size: 20.0),
                            SizedBox(width: 5.0),
                            Text('22 Nov.'),
                            SizedBox(width: 10.0),
                            Icon(Icons.timer, size: 20.0),
                            SizedBox(width: 5.0),
                            Text('7:30 AM'),
                          ],
                        ),
                      ],
                    ),
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                      myText('Pending', 16.0, FontWeight.normal, color: Colors.redAccent)


                    ])
                  ],
                ),
              ],
            )),
      ),
      onTap: () {

        Firestore.addDocument();
        // Navigator.pushNamed(context, '/route',
        //     arguments: {'route': /*route_model.dart Object*/});
      },
    );
    // InkWell(
    //   onTap: () {},
    //   child: ClipRRect(
    //     borderRadius: BorderRadius.circular(20),
    //     child: Container(
    //       //color: const Color(0xff2A2C36),
    //       height: 100.0,
    //       width: MediaQuery.of(context).size.width,
    //       margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
    //       decoration: const BoxDecoration(
    //         borderRadius: BorderRadius.all(Radius.circular(10.0)),
    //         //color: const Color.fromARGB(255, 74, 72, 72),
    //         color: Color(0xff2A2C36),
    //       ),
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           Padding(
    //             padding: const EdgeInsets.all(20.0),
    //             child: Text(
    //               '${item['title']}',
    //               style: const TextStyle(
    //                 color: Colors.white,
    //                 fontSize: 18,
    //               ),
    //             ),
    //           ),
    //           Container(
    //             height: 100.0,
    //             width: MediaQuery.of(context).size.width / 2,
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.only(
    //                   topRight: Radius.circular(6.0),
    //                   bottomRight: Radius.circular(6.0)),
    //               image: DecorationImage(
    //                 fit: BoxFit.cover,
    //                 image: NetworkImage('${item['imageUrl']}'),
    //               ),
    //             ),
    //           )
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
