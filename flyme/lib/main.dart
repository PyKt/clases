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
      initialRoute: 'CounterScreen',
      routes: {
        'AlertScreen': (BuildContext context) => const AlertScreen(),
        'CardScreen': (BuildContext context) => const CardScreen(),
        'CounterScreen': (BuildContext context) => const CounterScreen(),
        'HomeScreen': (BuildContext context) => const HomeScreen(),
        'CounterLessScreen': (BuildContext context) =>
            const CounterButtonLess(),
      },
    );
  }
}
