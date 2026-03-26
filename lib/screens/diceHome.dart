import 'package:flutter/material.dart';
import 'dart:math';

class DiceHome extends StatefulWidget {
  const DiceHome({super.key});

  @override
  State<DiceHome> createState() => _DiceHomeScreenState();
}

class _DiceHomeScreenState extends State<DiceHome> {
  // Logic
  int dicenum = 1;
  void _numberChange() {
    setState(() {
      dicenum = Random().nextInt(6) + 1;
    });
  }

  // widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dice App",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 129, 105, 12),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$dicenum",
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _numberChange,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 129, 105, 12),
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              child: const Text(
                "Roll Up!",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
