import 'package:flutter/material.dart';

class CounterScreenLess extends StatefulWidget {
  const CounterScreenLess({Key? key}) : super(key: key);

  @override
  State<CounterScreenLess> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreenLess> {
  int restador = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: const Text(
          "Reste Less Counter",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
      body: Center(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("Conteo"),
                Text('$restador'),
              ]),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {});
          restador--;
        },
        icon: const Icon(Icons.abc),
        label: const Text(
          "Lees",
        ),
      ),
    );
  }
}
