import 'package:flutter/material.dart';
import 'package:tickefly/pantallas_inicios/home_screen.dart';

void main() {
  runApp(const miApp());
}

class miApp extends StatelessWidget {
  const miApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
