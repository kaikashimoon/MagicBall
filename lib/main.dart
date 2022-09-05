import 'package:flutter/material.dart';
import 'dart:developer' as developer;
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade100,
        appBar: AppBar(
          title: const Center(child: Text('Magic Ball')),
          backgroundColor: Colors.blue.shade100,
        ),
        body: const BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int askSomethingNumber = 1;

  void getBallNumber() {
    setState(() {
      askSomethingNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              style:
                  TextButton.styleFrom(splashFactory: NoSplash.splashFactory),
              onPressed: () {
                getBallNumber();
                developer.log('Pressed 1');
              },
              child: Image.asset(
                ('images/ball$askSomethingNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
