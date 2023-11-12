import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorGPT extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<CalculatorGPT> {
  String _display = '';
  double _result = 0.0;

  void _onButtonPressed(String text) {
    if (text == '=') {
      try {
        final parser = Parser();
        final expression = parser.parse(_display);
        final contextModel = ContextModel();
        double result = expression.evaluate(EvaluationType.REAL, contextModel);
        setState(() {
          _display = result.toString();
          _result = result;
        });
      } catch (e) {
        setState(() {
          _display = 'Error';
          _result = 0.0;
        });
      }
    } else if (text == 'C') {
      setState(() {
        _display = '';
        _result = 0.0;
      });
    } else {
      setState(() {
        _display += text;
      });
    }
  }

  Widget _buildButton(String text, {int flex = 1}) {
    return Expanded(
      flex: flex,
      child: InkWell(
        onTap: () {
          _onButtonPressed(text);
        },
        child: Container(
          color: Colors.blue,
          child: Center(
            child: Text(
              text,
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CalculatorGPT'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(16),
              child: Text(
                _display,
                style: TextStyle(fontSize: 36),
              ),
            ),
          ),
          Divider(height: 1, color: Colors.black),
          Row(
            children: <Widget>[
              _buildButton('7'),
              _buildButton('8'),
              _buildButton('9'),
              _buildButton('÷'),
            ],
          ),
          Row(
            children: <Widget>[
              _buildButton('4'),
              _buildButton('5'),
              _buildButton('6'),
              _buildButton('×'),
            ],
          ),
          Row(
            children: <Widget>[
              _buildButton('1'),
              _buildButton('2'),
              _buildButton('3'),
              _buildButton('-'),
            ],
          ),
          Row(
            children: <Widget>[
              _buildButton('0', flex: 2),
              _buildButton('.'),
              _buildButton('+'),
              _buildButton('='),
            ],
          ),
          Row(
            children: <Widget>[
              _buildButton('C'),
            ],
          ),
        ],
      ),
    );
  }
}
