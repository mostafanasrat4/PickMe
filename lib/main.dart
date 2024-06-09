import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:pickme/screens/authenticate/login.dart';
import 'package:pickme/screens/authenticate/register.dart';
import 'package:pickme/screens/driver/add_ride.dart';
import 'package:pickme/screens/rider/rides_history.dart';
import 'firebase_options.dart';

import 'package:provider/provider.dart';
import 'services/Auth.dart';
import 'models/FirebaseUser.dart';
import 'screens/wrapper.dart';
import 'package:pickme/screens/rider/available_rides.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return StreamProvider<FirebaseUser?>.value(
      value: AuthService().user,
      initialData: null,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pick Me',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
        ),
        home: Wrapper(),
        initialRoute: '/main',
        routes: {
          '/main': (context) => Wrapper(),
          '/login': (context) => LoginPage(),
          '/signup': (context) => SignUpPage(),
          '/available_rides': (context) => const AvailableRidesPage(),
          '/rides_history': (context) => const RidesHistoryPage(),
          '/add_ride': (context) => const AddRidePage(),
        },
      ),
      );

  }
}


//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Pick Me',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
//         useMaterial3: true,
//       ),
//       home: const AvailableRoutesPage(title: 'Available Routes'),
//       initialRoute: '/main',
//       routes: {
//         '/main': (context) => const AvailableRoutesPage(title: 'Available Routes')
//         // '/local_time': (context) => LocalTimeScreen()
//       },
//     );
//   }
// }
