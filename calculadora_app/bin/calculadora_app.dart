import 'dart:io';

import 'package:calculadora_app/Classes/Pessoa.dart';
import 'package:calculadora_app/calculadora_app.dart' as calculadora_app;

void main(List<String> arguments) {
  var pessoa = new Pessoa;
 print("=== CALCULADORA DE IMC ===");
 print("Digite o seu nome: ");
 
 String nome = stdin.readLineSync();
 pessoa.setNome(nome);

}
