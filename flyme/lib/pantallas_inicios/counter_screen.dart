import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int contador = 0;
  void increment() {
    contador++;
    setState(() {});
  }

  void descremen() {
    contador--;
    setState(() {});
  }

  void restState() {
    contador = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const fontButtonStyle = TextStyle(
        fontSize: 30,
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
                const Text("Conteo 🕰️", style: fontButtonStyle),
                Text(
                  style: fontButtonStyle,
                  '$contador',
                ),
              ]),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomAccionButtons(
        incrementalFn: increment,
        reductionFn: descremen,
        resetFn: restState,
      ),
    );
  }
}

class CustomAccionButtons extends StatelessWidget {
  final Function incrementalFn;
  final Function reductionFn;
  final Function resetFn;
  const CustomAccionButtons({
    required this.incrementalFn,
    required this.reductionFn,
    required this.resetFn,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        FloatingActionButton.extended(
          onPressed: () => reductionFn(),
          icon: const Icon(Icons.exposure_minus_1_rounded),
          label: const Text("less"),
        ),
        FloatingActionButton.extended(
          onPressed: () => resetFn(),
          icon: const Icon(Icons.add_road_rounded),
          label: const Text("reset"),
        ),
        FloatingActionButton.extended(
          onPressed: () => incrementalFn(),
          icon: const Icon(Icons.add),
          label: const Text(
            "more",
          ),
        ),
      ],
    );
  }
}
