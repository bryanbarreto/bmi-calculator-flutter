import 'dart:math';

import 'package:flutter/material.dart';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi;

  CalculatorBrain({@required this.height, @required this.weight});

  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 40) {
      return 'Obesidade Grau III';
    } else if (_bmi >= 35) {
      return 'Obesidade Grau II';
    } else if (_bmi >= 30) {
      return 'Obesidade Grau I';
    } else if (_bmi >= 25) {
      return 'Sobrepeso';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Abaixo do Peso';
    }
  }

  String getInterpretation() {
    if (_bmi >= 40) {
      return 'Entre as patologias associadas à obesidade grau 3, estão os distúrbios hormonais, cardiopatias, morte súbita, dermatites, osteoporose, hipertensão, hepatopatias e insuficiência venosa. Porém, segundo a Organização Mundial de Saúde (OMS), a obesidade de grau III é a principal causa de morte evitável do mundo. ';
    } else if (_bmi >= 35) {
      return 'Os riscos associados à obesidade de grau II são mais acentuados. Dentre eles, estão a esteatose hepática, doenças articulares, hipertensão, diabetes mellitus, síndrome metabólica, cânceres, infarto agudo do miocárdio e acidente vascular cerebral, lembrando que estes dois últimos são as principais causas de morte no Brasil e no mundo.';
    } else if (_bmi >= 30) {
      return 'Busque um tratamento através de dieta apropriada com avaliação médica em conjunto com a prática de exercícios, desde que esta prática seja avaliada e liberada pelo médico.';
    } else if (_bmi >= 25) {
      return 'O sobrepeso é uma condição em que a pessoa pesa mais do que é considerado adequado para aquela altura, idade e sexo. O sedentarismo e os maus hábitos alimentares são os principais fatores que levam o indivíduo a ficar com sobrepeso.';
    } else if (_bmi >= 18.5) {
      return 'Você está no peso adequado de acordo com a sua altura. Faça uma dieta balanceada para realizar a manutenção do peso.';
    } else {
      return 'Estar abaixo do peso significa que você pesa menos do que é considerado adequado para sua altura, idade e sexo. Atenção: uma pessoa nestas condições pode estar com alguma doença que a está emagrecendo ou sua nutrição não está boa o suficiente.';
    }
  }
}
