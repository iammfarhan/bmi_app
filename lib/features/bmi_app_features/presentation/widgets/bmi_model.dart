// // ignore_for_file: unused_import, unused_field, prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:bmi_app/features/bmi_app_features/presentation/bmi_app_screen.dart';

// class BMIModel extends ChangeNotifier {

//   final TextEditingController heightController = TextEditingController();
//   final TextEditingController weightController = TextEditingController();
//   double _result = 0;

//   get getResult => _result;

//   void calculateBMI() {
//     double height = double.parse(heightController.text) / 100;
//     double weight = double.parse(weightController.text);

//     double heightSquare = height * height;
//     double result = weight / heightSquare;
//     _result = result;
//     notifyListeners();
//   }
// }
