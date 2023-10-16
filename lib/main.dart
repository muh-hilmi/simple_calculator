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
                    ElevatedButton(
                      onPressed: () => button("7"),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(height / 5, width / 5),
                        backgroundColor: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                      ),
                      child: const Text(
                        "7",
                        style: TextStyle(
                          fontSize: 56,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => button("8"),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(height / 5, width / 5),
                        backgroundColor: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                      ),
                      child: const Text(
                        "8",
                        style: TextStyle(
                          fontSize: 56,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => button("9"),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(height / 5, width / 5),
                        backgroundColor: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                      ),
                      child: const Text(
                        "9",
                        style: TextStyle(
                          fontSize: 56,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => button("X"),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(height / 5, width / 5),
                        backgroundColor: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                      ),
                      child: const Text(
                        "X",
                        style: TextStyle(
                          fontSize: 56,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () => button("4"),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(height / 5, width / 5),
                        backgroundColor: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                      ),
                      child: const Text(
                        "4",
                        style: TextStyle(
                          fontSize: 56,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => button("5"),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(height / 5, width / 5),
                        backgroundColor: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                      ),
                      child: const Text(
                        "5",
                        style: TextStyle(
                          fontSize: 56,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => button("6"),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(height / 5, width / 5),
                        backgroundColor: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                      ),
                      child: const Text(
                        "6",
                        style: TextStyle(
                          fontSize: 56,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => button("-"),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(height / 5, width / 5),
                        backgroundColor: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                      ),
                      child: const Text(
                        "-",
                        style: TextStyle(
                          fontSize: 56,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () => button("1"),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(height / 5, width / 5),
                        backgroundColor: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                      ),
                      child: const Text(
                        "1",
                        style: TextStyle(
                          fontSize: 56,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => button("2"),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(height / 5, width / 5),
                        backgroundColor: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                      ),
                      child: const Text(
                        "2",
                        style: TextStyle(
                          fontSize: 56,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => button("3"),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(height / 5, width / 5),
                        backgroundColor: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                      ),
                      child: const Text(
                        "3",
                        style: TextStyle(
                          fontSize: 56,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => button("+"),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(height / 5, width / 5),
                        backgroundColor: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                      ),
                      child: const Text(
                        "+",
                        style: TextStyle(
                          fontSize: 56,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () => button("C"),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(height / 5, width / 5),
                        backgroundColor: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                      ),
                      child: const Text(
                        "C",
                        style: TextStyle(
                          fontSize: 56,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => button("0"),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(height / 5, width / 5),
                        backgroundColor: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                      ),
                      child: const Text(
                        "0",
                        style: TextStyle(
                          fontSize: 56,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => button("="),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(height / 5, width / 5),
                        backgroundColor: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                      ),
                      child: const Text(
                        "=",
                        style: TextStyle(
                          fontSize: 56,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => button("/"),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(height / 5, width / 5),
                        backgroundColor: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                      ),
                      child: const Text(
                        "/",
                        style: TextStyle(
                          fontSize: 56,
                          color: Colors.white,
                        ),
                      ),
                    ),
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
              child: const Text("Back"))
        ],
      ),
    );
  }
}
