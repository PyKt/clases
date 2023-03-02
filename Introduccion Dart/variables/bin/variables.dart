import 'dart:io';

import 'package:variables/variables.dart' as variables;
import 'package:variables/practicas.dart';

void main(List<String> arguments) {
//Toda función debe iniciar desde una función MAIN
//  print('Hello world: ${variables.calculate()}!');
  var name = 'Voyager I';
  var year = 1977;
  var antennaDiameter = 3.7;
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  Map image = {
    'tags': ['Saturn'],
    'url': '/alberto/Imágenes/911.jpg'
  };
  print(name);
  print(year);
  print(antennaDiameter);
  print(flybyObjects);
  print(image);

  bool? isActive = true;
  if (isActive == null) {
    print('isActive es null');
  }
  if (isActive = true) {
    print('isActive es verdadero');
  } else {
    print('isActive es falso');
  }
  List myList = ['comprar las pastillas', 2000, 'amar mucho a mi esposa'];
  myList.add('hacer un jugo rico');
  print(myList);
  List numero = [1, 2, 3, 'cuatro', 5];
  numero.add(
    '6',
  );

  print(numero);

  // esta es una lista estática

  final numerosEstaticos = List.generate(10, ((index) => index));
  print(numerosEstaticos);

  final numerosEstaticos2 = List.generate(10, (int Index) => 10);
  print(numerosEstaticos2);

  ///Crear un mapa
  ///
  ///
  ///
  ///
  Map<String, dynamic> persona = {
    'Nom': 'Alberto',
    'Edad': '36',
    'Civil': true,
  };
  print(persona['Nom']);

}
