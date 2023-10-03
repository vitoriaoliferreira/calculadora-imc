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

  String imc = calcularIMC(peso, altura);

  print("$nome, seu IMC e de: $imc");
}
