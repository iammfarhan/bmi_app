// ignore_for_file: unused_import

import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
part 'calculation.g.dart';


class CalculationStore = Calculation with _$CalculationStore;

abstract class Calculation with Store{

@observable
double result = 0;

final TextEditingController heightController = TextEditingController();
final TextEditingController weightController = TextEditingController();


@action
  void calculateBMI() {
    double height = double.parse(heightController.text) / 100;
    double weight = double.parse(weightController.text);

    double heightSquare = height * height;
    double abc = weight / heightSquare;
    result = abc;
  }  
}