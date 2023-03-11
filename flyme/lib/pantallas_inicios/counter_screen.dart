import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fontCounterStyle = TextStyle(
        fontSize: 25,
        fontFamily: 'Raleway',
        color: Colors.blueAccent,
        fontWeight: FontWeight.bold);
    int contador = 1;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 234, 225, 229),
        elevation: 2,
        title: const Text(
          "Contador",
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
          print('$contador');
          contador++;
        },
        icon: const Icon(Icons.add),
        label: const Text(
          "more",
        ),
      ),
    );
  }
}
