import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculationApp extends StatefulWidget {
  final yourname;

  const CalculationApp({super.key, required this.yourname});

  @override
  State<StatefulWidget> createState() => _CalculationAppState();
}

class _CalculationAppState extends State<CalculationApp> {
  var firstNumberController = TextEditingController();
  var secondNumberController = TextEditingController();
  var result = " ";

  void addNumbers() {
    setState(() {
      var numberFirst = int.parse(firstNumberController.text.toString());
      var numberSecond = int.parse(secondNumberController.text.toString());
      var sum = numberFirst + numberSecond;
      result = "sum of $numberFirst and $numberSecond is $sum";
    });
  }

  void subtractNumbers() {
    setState(() {
      var numberFirst = int.parse(firstNumberController.text.toString());
      var numberSecond = int.parse(secondNumberController.text.toString());
      var subtract = numberFirst - numberSecond;
      result = "subtract of $numberFirst and $numberSecond is $subtract";
    });
  }

  void multiplyNumbers() {
    setState(() {
      var numberFirst = int.parse(firstNumberController.text.toString());
      var numberSecond = int.parse(secondNumberController.text.toString());
      var multiply = numberFirst * numberSecond;
      result = "multiply of $numberFirst and $numberSecond is $multiply";
    });
  }

  void divideNumbers() {
    setState(() {
      var numberFirst = int.parse(firstNumberController.text.toString());
      var numberSecond = int.parse(secondNumberController.text.toString());
      var divide = numberFirst ~/ numberSecond;
      result = "divide of $numberFirst and $numberSecond is $divide";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculations App'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.lime,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome ${widget.yourname} to the Calculation App',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(height: 20),
                NumberTextField(
                  hintText: 'Enter First number',
                  controller: firstNumberController,
                ),
                Container(height: 10),
                NumberTextField(
                  hintText: 'Enter Second number',
                  controller: secondNumberController,
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomOutlinedButton(
                        text: 'Add',
                        onPressed: addNumbers,
                        firstNumberController: firstNumberController,
                        secondNumberController: secondNumberController,
                      ),

                      CustomOutlinedButton(
                        text: 'Sub',
                        onPressed: subtractNumbers,
                        firstNumberController: firstNumberController,
                        secondNumberController: secondNumberController,
                      ),

                      CustomOutlinedButton(
                        text: 'Mul',
                        onPressed: multiplyNumbers,
                        firstNumberController: firstNumberController,
                        secondNumberController: secondNumberController,
                      ),

                      CustomOutlinedButton(
                        text: 'Div',
                        onPressed: divideNumbers,
                        firstNumberController: firstNumberController,
                        secondNumberController: secondNumberController,
                      ),
                    ],
                  ),
                ),
                Text(
                  'Result for this calculation is $result',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NumberTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  const NumberTextField({
    super.key,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hint: Text(hintText),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(11)),
      ),
    );
  }
}

class CustomOutlinedButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final TextEditingController firstNumberController;
  final TextEditingController secondNumberController;

  const CustomOutlinedButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.firstNumberController,
    required this.secondNumberController,
  });

  @override
  State<CustomOutlinedButton> createState() => _CustomOutlinedButtonState();
}

class _CustomOutlinedButtonState extends State<CustomOutlinedButton> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        widget.onPressed();
      },
      child: Text(widget.text),
    );
  }
}
