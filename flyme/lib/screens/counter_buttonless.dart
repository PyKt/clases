import 'package:flutter/material.dart';

class CounterButtonLess extends StatefulWidget {
  const CounterButtonLess({Key? key}) : super(key: key);

  @override
  State<CounterButtonLess> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterButtonLess> {
  int restador = 1;

  @override
  Widget build(BuildContext context) {
    const estiloFuentes = TextStyle(
        fontFamily: "Roboto",
        fontSize: 23,
        color: Colors.deepOrange,
        fontWeight: FontWeight.w800);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
        title: const Text(
          "Hola Mundo",
          style: TextStyle(
            fontFamily: "Roboto",
            fontSize: 20,
          ),
        ),
      ),
      body: Center(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(style: estiloFuentes, "Conteo"),
                Text(style: estiloFuentes, '$restador'),
              ]),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {});
          restador--;
        },
        icon: const Icon(Icons.android),
        label: const Text(
          "Less",
        ),
      ),
    );
  }
}
