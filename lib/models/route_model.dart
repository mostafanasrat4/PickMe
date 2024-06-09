import 'package:pickme/models/user_model.dart';

class Route {
  Route({required this.source, required this.destination});

  String source;
  String destination;
  User? driver;

}