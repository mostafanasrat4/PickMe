import 'package:cloud_firestore/cloud_firestore.dart';

class Firestore {

  static FirebaseFirestore db = FirebaseFirestore.instance;

  // Create a new user with a first and last name
  static final user = <String, dynamic>{
    "first": "Ada",
    "last": "Lovelace",
    "born": 1815
  };

  static Future? addDocument(){
    // Add a new document with a generated ID
    db.collection("users").add(user).then((DocumentReference doc) =>
        print('DocumentSnapshot added with ID: ${doc.id}'));
  }

  static Future? addRide(Map<String, dynamic> ride){
    // Add a new ride.dart with a generated ID
    var id;
    try {
      db.collection("rides").add(ride).then((DocumentReference doc) =>
          id = doc.id);
      return id;
    } on Exception catch (e) {
      return null;
    }
  }

  static Future<List?> getAllRides() async{

    List rides = [];
    QuerySnapshot querySnapshot = await db.collection('rides').get();

    final allRides = querySnapshot.docs.map((doc) => doc.data()).toList();

    return allRides;

    for (var docSnapshot in querySnapshot.docs) {
      print('${docSnapshot.id} => ${docSnapshot.data()}');
      rides.add(docSnapshot.data());
    }
    return rides;
  }

}