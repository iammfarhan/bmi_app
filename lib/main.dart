// ignore_for_file: prefer_const_constructors, unused_import

import 'package:bmi_app/features/bmi_app_features/presentation/bmi_app_screen.dart';
import 'package:bmi_app/features/bmi_app_features/presentation/widgets/bmi_model.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BMIScreen(),
    );
  }
}
