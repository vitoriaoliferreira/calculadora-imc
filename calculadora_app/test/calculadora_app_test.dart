import 'package:calculadora_app/calculadora_app.dart';
import 'package:test/test.dart';

void main() {
  test('Calculo do IMC', () {
    expect(calcularIMC(70.0,1.60), "27.34");
  });
}
