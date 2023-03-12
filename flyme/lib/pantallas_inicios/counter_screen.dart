import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int contador = 1;

  @override
  Widget build(BuildContext context) {
    const fontCounterStyle = TextStyle(
        fontSize: 25,
        fontFamily: 'Roboto',
        color: Colors.blueAccent,
        fontWeight: FontWeight.w800);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 34, 147, 233),
        elevation: 2,
        title: const Text(
          "Counter Screen",
          style: TextStyle(
              fontFamily: 'Raleway',
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("Conteo 🕰️",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                        fontFamily: 'Raleway')),
                Text(
                  style: fontCounterStyle,
                  '$contador',
                ),
              ]),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            contador++;
          });
        },
        icon: const Icon(Icons.add),
        label: const Text(
          "more",
        ),
      ),
    );
  }
}
