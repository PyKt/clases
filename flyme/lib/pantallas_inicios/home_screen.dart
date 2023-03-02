import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 234, 225, 229),
        elevation: 2,
        title: const Text(
          "COUNTER",
          style: TextStyle(
              fontFamily: 'Montserrat',
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
              children: const [
                Text("Conteo 🕰️",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black87,
                      fontFamily: 'Montserrat',
                    )),
                Text("-",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black54,
                        fontFamily: 'Montserrat')),
              ]),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: const Icon(Icons.add),
        label: const Text(
          "more",
        ),
      ),
    );
  }
}
