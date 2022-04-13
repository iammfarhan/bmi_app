// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations, deprecated_member_use, unused_field, unused_import, avoid_types_as_parameter_names, non_constant_identifier_names, empty_statements, curly_braces_in_flow_control_structures, dead_code, prefer_final_fields

import 'package:bmi_app/features/bmi_app_features/presentation/widgets/bmi_model.dart';
import 'package:bmi_app/features/bmi_app_features/presentation/widgets/calculation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class BMIScreen extends StatefulWidget {
  const BMIScreen({Key? key}) : super(key: key);

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {

  CalculationStore _calculation = CalculationStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text(
          'BMI Calculator💙',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color(0xff1B1D25),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Text(
              "Put Height here!",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Observer(builder: (context) {
              return TextField(
                controller: _calculation.heightController,
                keyboardType: TextInputType.number,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: const TextStyle(fontSize: 15, color: Colors.white),
                  hintText: 'Height in cm',
                  filled: true,
                  fillColor: Color(0xff1B1D25),
                ),
              );
            }),

            SizedBox(
              height: 20,
            ),
            Text(
              "Put Weight here!",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Observer(builder: (context) {
              return TextField(
                controller: _calculation.weightController,
                keyboardType: TextInputType.number,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: const TextStyle(fontSize: 15, color: Colors.white),
                  hintText: 'Weight in kg',
                  filled: true,
                  fillColor: Color(0xff1B1D25),
                ),
              );
            }),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: double.infinity,
              height: 60,
              child:  RaisedButton(
                color: Color(0xff1B1D25),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)),
                textColor: Colors.white,
                child: Text(
                  "Calculate BMI",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  _calculation.calculateBMI();
                },
              )
            ),
            SizedBox(height: 30),
            Center(child: Observer(
              builder: (context) {
                return Text(
                  _calculation.result == 0
                      ? "Hey enter some value"
                      : "Your BMI is ${_calculation.result.toStringAsFixed(2)}",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                );
              },
            )),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Observer(
                builder: (context) {
                  return _calculation.result == 0
                      ? const Text(
                          "👋",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        )
                      : _calculation.result < 18.5 && _calculation.result < 24.9
                          ? const Text(
                              "You are underweighted😭",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            )
                          : const Text(
                              "You are overweighted😥",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
