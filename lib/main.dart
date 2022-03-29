// ignore_for_file: prefer_const_constructors

import 'package:bmi_app/features/bmi_app_features/presentation/bmi_app_screen.dart';
import 'package:bmi_app/features/bmi_app_features/presentation/widgets/bmi_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
    return ChangeNotifierProvider<BMIModel>(
      create: ((context) => BMIModel()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BmiScreen(),
      ),
    );
  }
}
