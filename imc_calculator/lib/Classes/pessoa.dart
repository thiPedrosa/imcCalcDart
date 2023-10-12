class Pessoa {
  String _nome = "";
  double _altura = 0;
  double _peso = 0;

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome () {
    return _nome;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  double getAltura () {
    return _altura;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double getPeso () {
    return _peso;
  }

  @override
  String toString() {
    return {
      "Nome": _nome,
      "Peso": _peso,
      "Altura": _altura,
    }.toString();
  }
}