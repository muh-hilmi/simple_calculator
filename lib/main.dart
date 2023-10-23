import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Kalkulator(),
    );
  }
}

class Kalkulator extends StatefulWidget {
  Kalkulator({super.key});

  @override
  State<Kalkulator> createState() => _KalkulatorState();
}

class _KalkulatorState extends State<Kalkulator> {
  var size, height, width, _output, angka, operand, num1, num2;
  @override
  void initState() {
    super.initState();
    _output = "0"; // Inisialisasi hasil menjadi "0".
  }

  button(var buttonText) {
    if (buttonText == "C") {
      _output = "0";
      num1 = 0;
      num2 = 0;
      operand = "";
    } else if (buttonText == "+" ||
        buttonText == "-" ||
        buttonText == "X" ||
        buttonText == "/") {
      num1 = double.parse(_output);
      operand = buttonText;
      _output = "";
    } else if (buttonText == "=") {
      num2 = double.parse(_output);
      if (operand == "+") {
        _output = (num1 + num2).toString();
      } else if (operand == "-") {
        _output = (num1 - num2).toString();
      } else if (operand == "X") {
        _output = (num1 * num2).toString();
      } else if (operand == "/") {
        _output = (num1 / num2).toString();
      }
      num1 = 0;
      num2 = 0;
      operand = "";
    } else {
      // Menggunakan buttonText sebagai angka, bukan operator.
      if (_output == "0") {
        _output = buttonText;
      } else {
        _output = _output + buttonText;
      }
    }

    setState(() {
      _output;
    });
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      appBar: AppBar(title: const Text("Kalkulator Sederhana")),
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(vertical: height / 10),
            child: Text(
              _output,
              style: const TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    tombol("7"),
                    tombol("8"),
                    tombol("9"),
                    tombol("X"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    tombol("4"),
                    tombol("5"),
                    tombol("6"),
                    tombol("-"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    tombol("1"),
                    tombol("2"),
                    tombol("3"),
                    tombol("+"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    tombol("C"),
                    tombol("0"),
                    tombol("="),
                    tombol("/"),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context, "/");
              },
              child: const Text("Back")),
          const SizedBox(height: 10),
          const Text(
            "Muhammad Hilmi Izzulhaq 1101202399",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }

  Widget tombol(String X) {
    return ElevatedButton(
      onPressed: () => button(X),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(height / 5, width / 5),
        backgroundColor:
            Colors.primaries[Random().nextInt(Colors.primaries.length)],
      ),
      child: Text(
        X,
        style: const TextStyle(
          fontSize: 56,
          color: Colors.white,
        ),
      ),
    );
  }
}
