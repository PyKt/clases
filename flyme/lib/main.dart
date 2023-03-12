import 'package:flutter/material.dart';
import 'package:tickefly/pantallas_inicios/counter_screen.dart';
import 'package:tickefly/pantallas_inicios/counter_buttonless.dart';

void main() {
  runApp(const miApp());
}

class miApp extends StatelessWidget {
  const miApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: CounterButtonLess());
  }
}
