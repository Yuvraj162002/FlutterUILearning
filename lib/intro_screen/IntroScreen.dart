
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_learning/demo_project/CalculationApp.dart';
import 'package:flutter_ui_learning/stateful_widgets_custom/StateFulWidgets.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Intro Screen'),
        backgroundColor: Colors.lime,
      ),
      body: Center(
        child: OutlinedButton(onPressed: () {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => CalculationApp()));
            }, child: Text('Next')),
      ),
    );
  }
}