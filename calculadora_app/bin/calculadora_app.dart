import 'dart:convert';
import 'dart:io';

import 'package:calculadora_app/Classes/Pessoa.dart';
import 'package:calculadora_app/calculadora_app.dart';
//import 'package:calculadora_app/calculadora_app.dart' as calculadora_app;

void main(List<String> arguments) {
  var pessoa = Pessoa();
  print("=== CALCULADORA DE IMC ===");
  print("Digite o seu nome: ");

  String? nome = stdin.readLineSync(encoding: utf8);
  pessoa.setNome(nome!);

  print("Digite sua altura em centimetros: ");
  String? input = stdin.readLineSync(encoding: utf8);

  double altura = double.parse(input!);
  pessoa.setAltura(altura);

  print("Digite seu peso em kg: ");
  String? input2 = stdin.readLineSync(encoding: utf8);
  double peso = double.parse(input2!);
  pessoa.setPeso(peso);

  double imc = calcularIMC(peso, altura);

  if (imc < 18.5) {
    print("$nome, seu IMC e de: $imc. Voce esta abaixo do peso!");
  }
  else if(imc >= 18.5 || imc <=24.99){
     print("$nome, seu IMC e de: $imc. Voce esta com o peso normal!");
  }
  else if(imc >=25.0 || imc <=29.99){
     print("$nome, seu IMC e de: $imc. Voce esta com sobrepeso!");
  }
  else if(imc >=30)
  {
     print("$nome, seu IMC e de: $imc. Voce esta com obesidade!");
  }


}
