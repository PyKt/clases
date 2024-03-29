import "package:flutter/material.dart";
import 'package:tickefly/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mini Apps',
      initialRoute: 'HomeScreen',
      routes: {
        'HomeScreen': (BuildContext context) => const HomeScreen(),
        'AlertScreen': (BuildContext context) => const AlertScreen(),
        'CardScreen': (BuildContext context) => const CardScreen(),
        'CounterScreen': (BuildContext context) => const CounterScreen(),
        'CounterLessScreen': (BuildContext context) =>
            const CounterButtonLess(),
      },
    );
  }
}
