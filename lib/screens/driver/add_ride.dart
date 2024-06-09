import 'dart:ffi';

import 'package:flutter/material.dart';

import '../../services/firestore.dart';

class AddRidePage extends StatefulWidget {
  const AddRidePage({Key? key}) : super(key: key);

  @override
  State<AddRidePage> createState() => _AddRidePageState();
}

class _AddRidePageState extends State<AddRidePage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _toController = TextEditingController();
  final TextEditingController _fromController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _noOfSeatsController = TextEditingController();
  final TextEditingController _carModelController = TextEditingController();
  final TextEditingController _carNoController = TextEditingController();

  String? _validateText(String? text) {
    if (text!.trim().isEmpty) {
      return "Required Field";
    } else {
      if (text.trim().length <= 3) {
        return "Enter a descriptive value. Avoid abbreviations";
      } else {
        return null;
      }
    }
  }

  String? _validatePrice(String? text) {
    if (text!.trim().isEmpty) {
      return "Required Field";
    } else {
      int value = int.parse(text);
      if (value <= 0) {
        return "Invalid Value";
      } else if (value > 100) {
        return "Maximum price is 100 LE";
      } else {
        return null;
      }
    }
  }

  String? _validateNoOfSeats(String? text) {
    if (text!.trim().isEmpty) {
      return "Required Field";
    } else {
      int value = int.parse(text);
      if (value <= 0) {
        return "Invalid Value";
      } else if (value > 3) {
        return "Maximum not of seats are 3";
      } else {
        return null;
      }
    }
  }

  String? _validateCarNo(String? text) {
    if (text!.trim().isEmpty) {
      return "Required Field";
    } else {
      if (text.trim().length < 2 || text.trim().length > 7) {
        return "Invalid Car No. Enter 2-7 character.";
      } else {
        return null;
      }
    }
  }

  _addRide() {
    if (_formKey.currentState!.validate()) {
      final ride = {
        'from': _fromController.text.toString(),
        'to': _toController.text.toString(),
        'price': int.parse(_priceController.text.toString()),
        'noOfSeats': int.parse(_noOfSeatsController.text),
        'carModel': _carModelController.text,
        'carNo': _carNoController.text,
      };
      // print(ride.dart.toString());

      var id = Firestore.addRide(ride);
      print("Ride added with id: ${id}");
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.lightGreen,
          content: Text('Ride added successfully')));

      final rides = Firestore.getAllRides();
      print(rides);

      _formKey.currentState!.save();
      _formKey.currentState!.reset();

    } else {
      print("Form Validation Failed!");
    }
  }

  @override
  Widget build(BuildContext context) {
    final fromTextFormField = TextFormField(
      controller: _fromController,
      validator: _validateText,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      textCapitalization: TextCapitalization.words,
      decoration: const InputDecoration(
        hintText: "Enter ride start location",
        labelText: "From",
      ),
    );

    final toTextFormField = TextFormField(
      controller: _toController,
      validator: _validateText,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      textCapitalization: TextCapitalization.words,
      decoration: const InputDecoration(
        hintText: "Enter ride destination",
        labelText: "To",
      ),
    );

    final priceTextFormField = TextFormField(
      controller: _priceController,
      validator: _validatePrice,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
        hintText: "Enter price",
        labelText: "Price",
      ),
    );

    final noOfSeatsTextFormField = TextFormField(
      controller: _noOfSeatsController,
      validator: _validateNoOfSeats,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
        hintText: "Enter no of available seats",
        labelText: "No of Seats",
      ),
    );

    final carModelTextFormField = TextFormField(
      controller: _carModelController,
      validator: _validateText,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      textCapitalization: TextCapitalization.words,
      decoration: const InputDecoration(
        hintText: "Toyota Corolla 2021",
        labelText: "Car Model",
      ),
    );

    final carNoTextFormField = TextFormField(
      controller: _carNoController,
      validator: _validateCarNo,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.done,
      textCapitalization: TextCapitalization.words,
      decoration: const InputDecoration(
        hintText: "ب س م 154",
        labelText: "Car No",
      ),
    );

    final addRideButton = ElevatedButton(
      onPressed: _addRide,
      child: Text('Add Ride'),


    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Enter Ride Details'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                fromTextFormField,
                toTextFormField,
                priceTextFormField,
                noOfSeatsTextFormField,
                carModelTextFormField,
                carNoTextFormField,
                addRideButton,
              ],
            )),
      ),
    );
  }
}
