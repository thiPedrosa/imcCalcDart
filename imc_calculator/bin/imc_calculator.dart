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
      var imc = peso / (altura * altura);
      print(imc);
      return imc;
    }

  printConsole("Digite seu nome");
  p1.setNome(readConsole());
  printConsole("Digite sua Altura");
  p1.setAltura(double.parse(readConsole()));
  printConsole("Digite seu peso");
  p1.setPeso(double.parse(readConsole()));
  var imcPessoa = calculateIMC(p1.getPeso(), p1.getAltura());
  var nomePessoa = p1.getNome();

  print("Olá $nomePessoa seu IMC é $imcPessoa");

}
