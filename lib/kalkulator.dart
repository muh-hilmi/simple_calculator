import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kalkulator_1101202399/kalkulator_chatgpt.dart';
import 'package:kalkulator_1101202399/login.dart';

class Kalkulator extends StatefulWidget {
  const Kalkulator({super.key});

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
      backgroundColor: const Color(0xffF5E8B7),
      appBar: AppBar(
        title: const Text("Kalkulator Buatan"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xffCD5C08),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Column(
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        tombol("7"),
                        tombol("8"),
                        tombol("9"),
                        tombol("X"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        tombol("4"),
                        tombol("5"),
                        tombol("6"),
                        tombol("-"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        tombol("1"),
                        tombol("2"),
                        tombol("3"),
                        tombol("+"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffCD5C08),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CalculatorGPT(), // Pass userData
                      ),
                    );
                  },
                  child: Text(
                    'ke Kalkulator ChatGPT',
                    style: GoogleFonts.rubik(
                      fontSize: 20.0,
                      color: const Color(0xffC1D8C3),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffCD5C08),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(), // Pass userData
                      ),
                    );
                  },
                  child: Text(
                    'Kembali',
                    style: GoogleFonts.rubik(
                      fontSize: 20.0,
                      color: const Color(0xffC1D8C3),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Muhammad Hilmi Izzulhaq 1101202399",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget tombol(String X) {
    return ElevatedButton(
      onPressed: () => button(X),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(height / 10, width / 10),
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
