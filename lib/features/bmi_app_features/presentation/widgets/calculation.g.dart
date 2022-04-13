// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculation.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CalculationStore on Calculation, Store {
  final _$resultAtom = Atom(name: 'Calculation.result');

  @override
  double get result {
    _$resultAtom.reportRead();
    return super.result;
  }

  @override
  set result(double value) {
    _$resultAtom.reportWrite(value, super.result, () {
      super.result = value;
    });
  }

  

  final _$CalculationActionController = ActionController(name: 'Calculation');

  @override
  void calculateBMI() {
    final _$actionInfo = _$CalculationActionController.startAction(
        name: 'Calculation.calculateBMI');
    try {
      return super.calculateBMI();
    } finally {
      _$CalculationActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
result: ${result},
heightController: ${heightController},
weightController: ${weightController}
    ''';
  }
}
