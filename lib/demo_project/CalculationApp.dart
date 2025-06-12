import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculationApp extends StatefulWidget {
  const CalculationApp({super.key});

  @override
  State<StatefulWidget> createState() => _CalculationAppState();
}

class _CalculationAppState extends State<CalculationApp> {
  var firstNumberController = TextEditingController();
  var secondNumberController = TextEditingController();
  var result = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculation App'),
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
                TextField(
                  controller: firstNumberController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hint: Text('Enter first number'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                  ),
                ),

                Container(height: 10),

                TextField(
                  controller: secondNumberController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hint: Text('Enter Second number'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      OutlinedButton(
                        onPressed: () {
                          // Add the addition logic here
                          var numberFirst = int.parse(
                            firstNumberController.text.toString(),
                          );
                          var numberSecond = int.parse(
                            secondNumberController.text.toString(),
                          );
                          var sum = numberFirst + numberSecond;
                          result =
                              "sum of $numberFirst and $numberSecond is $sum";

                          setState(() {});
                        },
                        child: Text('Add'),
                      ),

                      OutlinedButton(
                        onPressed: () {
                          // Add the subtract logic here
                          setState(() {
                            var numberFirst = int.parse(
                              firstNumberController.text.toString(),
                            );
                            var numberSecond = int.parse(
                              secondNumberController.text.toString(),
                            );
                            var subtract = numberFirst - numberSecond;
                            result =
                                "subtract of $numberFirst and $numberSecond is $subtract";
                          });
                        },
                        child: Text('Sub'),
                      ),

                      OutlinedButton(
                        onPressed: () {
                          // Add the multiply logic here
                          setState(() {
                            var numberFirst = int.parse(
                              firstNumberController.text.toString(),
                            );
                            var numberSecond = int.parse(
                              secondNumberController.text.toString(),
                            );
                            var multiply = numberFirst * numberSecond;
                            result =
                                "multiply of $numberFirst and $numberSecond is $multiply";
                          });
                        },
                        child: Text('Mult'),
                      ),

                      OutlinedButton(
                        onPressed: () {
                          // Add the divide logic here
                          setState(() {
                            var numberFirst = int.parse(
                              firstNumberController.text.toString(),
                            );
                            var numberSecond = int.parse(
                              secondNumberController.text.toString(),
                            );
                            var divide = numberFirst ~/ numberSecond;
                            result =
                                "divide of $numberFirst and $numberSecond is $divide";
                          });
                        },
                        child: Text('Div'),
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
