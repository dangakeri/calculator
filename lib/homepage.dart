import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int firstNumber;
  late int secondNumber;
  late String history = '';
  late String textToDisplay = '';
  late String results;
  late String operations;
  @override
  Widget build(BuildContext context) {
    btnOnclick(String btnval) {
      if (btnval == 'C') {
        textToDisplay = '';
        firstNumber = 0;
        secondNumber = 0;
        results = '';
      } else if (btnval == 'AC') {
        textToDisplay = '';
        firstNumber = 0;
        secondNumber = 0;
        results = '';
        history = '';
      } else if (btnval == '+/-') {
        if (textToDisplay[0] != '-') {
          results = '-' + textToDisplay;
        } else {
          results = textToDisplay.substring(1);
        }
      } else if (btnval == '<') {
        results = textToDisplay.substring(0, textToDisplay.length - 1);
      } else if (btnval == '+' ||
          btnval == '-' ||
          btnval == 'X' ||
          btnval == '/') {
        firstNumber = int.parse(textToDisplay);
        results = '';
        operations = btnval;
      } else if (btnval == '=') {
        secondNumber = int.parse(textToDisplay);
        if (operations == '+') {
          results = (firstNumber + secondNumber).toString();
          history = firstNumber.toString() +
              operations.toString() +
              secondNumber.toString();
        }
        if (operations == '-') {
          results = (firstNumber - secondNumber).toString();
          history = firstNumber.toString() +
              operations.toString() +
              secondNumber.toString();
        }
        if (operations == 'X') {
          results = (firstNumber * secondNumber).toString();
          history = firstNumber.toString() +
              operations.toString() +
              secondNumber.toString();
        }
        if (operations == '/') {
          results = (firstNumber / secondNumber).toString();
          history = firstNumber.toString() +
              operations.toString() +
              secondNumber.toString();
        }
      } else {
        results = int.parse(textToDisplay + btnval).toString();
      }
      setState(() {
        textToDisplay = results;
      });
    }

    return Scaffold(
      backgroundColor: Color(0xfff8f9fa),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: false,
        title: const Text(
          'Calculator',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: const Alignment(1, 1),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  history,
                  style: GoogleFonts.rubik(
                    fontSize: 24,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            Container(
              alignment: const Alignment(1, 1),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  textToDisplay,
                  style: GoogleFonts.rubik(
                    fontSize: 48,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CalculatorButton(
                  text: 'AC',
                  callback: btnOnclick,
                  fillColor: Colors.blue,
                  textSize: 15,
                  textColor: Colors.white,
                ),
                CalculatorButton(
                  text: 'C',
                  callback: btnOnclick,
                  fillColor: Colors.blue,
                  textSize: 20,
                  textColor: Colors.white,
                ),
                CalculatorButton(
                  text: '<',
                  callback: btnOnclick,
                  fillColor: Colors.yellow,
                  textSize: 24,
                  textColor: Colors.black,
                ),
                CalculatorButton(
                  text: '/',
                  callback: btnOnclick,
                  fillColor: Colors.yellow,
                  textSize: 24,
                  textColor: Colors.black,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CalculatorButton(
                  text: '9',
                  callback: btnOnclick,
                  fillColor: Colors.blue,
                  textSize: 20,
                  textColor: Colors.white,
                ),
                CalculatorButton(
                  text: '8',
                  callback: btnOnclick,
                  fillColor: Colors.blue,
                  textSize: 20,
                  textColor: Colors.white,
                ),
                CalculatorButton(
                  text: '7',
                  callback: btnOnclick,
                  fillColor: Colors.blue,
                  textSize: 20,
                  textColor: Colors.white,
                ),
                CalculatorButton(
                  text: 'X',
                  callback: btnOnclick,
                  fillColor: Colors.yellow,
                  textSize: 24,
                  textColor: Colors.black,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CalculatorButton(
                  text: '6',
                  callback: btnOnclick,
                  fillColor: Colors.blue,
                  textSize: 20,
                  textColor: Colors.white,
                ),
                CalculatorButton(
                  text: '5',
                  callback: btnOnclick,
                  fillColor: Colors.blue,
                  textSize: 20,
                  textColor: Colors.white,
                ),
                CalculatorButton(
                  text: '4',
                  callback: btnOnclick,
                  fillColor: Colors.blue,
                  textSize: 20,
                  textColor: Colors.white,
                ),
                CalculatorButton(
                  text: '-',
                  callback: btnOnclick,
                  fillColor: Colors.yellow,
                  textSize: 24,
                  textColor: Colors.black,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CalculatorButton(
                  text: '3',
                  callback: btnOnclick,
                  fillColor: Colors.blue,
                  textSize: 20,
                  textColor: Colors.white,
                ),
                CalculatorButton(
                  text: '2',
                  callback: btnOnclick,
                  fillColor: Colors.blue,
                  textSize: 20,
                  textColor: Colors.white,
                ),
                CalculatorButton(
                  text: '1',
                  callback: btnOnclick,
                  fillColor: Colors.blue,
                  textSize: 20,
                  textColor: Colors.white,
                ),
                CalculatorButton(
                  text: '+',
                  callback: btnOnclick,
                  fillColor: Colors.yellow,
                  textSize: 24,
                  textColor: Colors.black,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CalculatorButton(
                  text: '+/-',
                  callback: () {
                    btnOnclick('buttonValue');
                  },
                  fillColor: Colors.blue,
                  textSize: 20,
                  textColor: Colors.white,
                ),
                CalculatorButton(
                  text: '0',
                  callback: btnOnclick,
                  fillColor: Colors.blue,
                  textSize: 20,
                  textColor: Colors.white,
                ),
                CalculatorButton(
                  text: '00',
                  callback: btnOnclick,
                  fillColor: Colors.blue,
                  textSize: 20,
                  textColor: Colors.white,
                ),
                CalculatorButton(
                  text: '=',
                  callback: btnOnclick,
                  fillColor: Colors.yellow,
                  textSize: 24,
                  textColor: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CalculatorButton extends StatelessWidget {
  final String text;
  final Function callback;
  final Color fillColor;
  final double textSize;
  final Color textColor;
  const CalculatorButton({
    Key? key,
    required this.text,
    required this.callback,
    required this.fillColor,
    required this.textSize,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: fillColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            const BoxShadow(
              color: Color(0xffe9ecef),
              offset: Offset(4.0, 4.0),
              blurRadius: 15.0,
              spreadRadius: 1.0,
            ),
          ]),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: fillColor),
        onPressed: () => callback(text),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.rubik(
              fontSize: textSize,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
