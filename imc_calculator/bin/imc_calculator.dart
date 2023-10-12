import 'dart:convert';
import 'dart:io';

import 'package:imc_calculator/Classes/pessoa.dart';

void main(List<String> arguments) {
  var p1 = Pessoa(); 
  void printConsole (String texto) => print(texto);
  String readConsole () {
    var typedText = stdin.readLineSync(encoding: utf8);
    return typedText ?? "";
  }
  double calculateIMC (double peso, double altura) {
    try {
          var imc = peso / (altura * altura);
      print(imc);
    } catch (e) {
      print (e);
    }

  }
  printConsole("Digite seu nome");
  p1.setNome(readConsole());
  printConsole("Digite sua Altura");
  p1.setAltura(double.parse(readConsole()));
  printConsole("Digite seu peso");
  p1.setPeso(double.parse(readConsole()));
  calculateIMC(p1.getPeso(), p1.getAltura());

  print(p1);

}
