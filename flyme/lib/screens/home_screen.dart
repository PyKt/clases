import 'package:flutter/material.dart';
import 'package:tickefly/screens/counter_screen.dart';
import 'package:tickefly/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text("inicio"),
      ),
      body: const Center(
        child: Text('HomeScreen'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const CounterScreen()));
        },
        label: const Text('Menu conteo'),
        icon: const Icon(Icons.calculate_outlined),
      ),
    );
  }
}
