String calcularIMC (double peso, double altura){
  double imc = peso/(altura*altura);
  String imcString = imc.toStringAsFixed(2);
  return imcString;
}
