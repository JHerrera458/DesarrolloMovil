// Crea un programa en Dart que permita a los usuarios convertir entre grados Celsius y grados Fahrenheit.
// El programa debe mostrar un menú donde los usuarios puedan seleccionar si desean convertir de Celsius a Fahrenheit o viceversa.
// Luego, deben ingresar la temperatura en la unidad seleccionada y el programa debe mostrar el resultado de la conversión.

import 'dart:io';

void main(List<String> args) {
  var opcion;
  do {
    print('SELECCIONE UNA OPCIÓN Y PRESIONE ENTER');
    print('1. Convertir de Celsius a Fahrenheit');
    print('2. Convertir de Fahrenheit a Celsius');
    print('3. Salir');
    opcion = stdin.readLineSync().toString();
    if (opcion == '1') {
      print('Ingrese un número en grados Celsius');
      double num = double.parse(stdin.readLineSync().toString());
      double result = celsiusToFahreinheit(num);
      print('$num °C equivale a: $result °F');
    } else if (opcion == '2') {
      print('Ingrese un número en grados Fahrenheit');
      double num = double.parse(stdin.readLineSync().toString());
      double result = fahrenheitToCelsius(num);
      print('$num °F equivale a: $result °C');
    } else {
      print('SALIENDO DE LA CALCULADORA...');
      break;
    }
  } while (true);
}

celsiusToFahreinheit(double celsius) {
  double result = (celsius * 1.8) + 32;
  return result;
}

fahrenheitToCelsius(double fahrenheit) {
  double result = (fahrenheit - 32) / 1.8;
  return result;
}
