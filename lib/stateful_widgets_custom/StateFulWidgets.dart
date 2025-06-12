import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyMainHomePage extends StatefulWidget {
  const MyMainHomePage({super.key});

  @override
  State<MyMainHomePage> createState() => _MyMainHomePageState();
}

class _MyMainHomePageState extends State<MyMainHomePage> {
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Main Home Page'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter is $counter',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter++;
                  print("Count is clicked and increased by the $counter");
                });
              },
              child: Text('Click Me to Increase Counter'),
            ),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter--;
                  print("Count is clicked and decreased by the $counter");
                });
              },
              child: Text('Click Me to Decrease Counter'),
            ),
          ],
        ),
      ),
    );
  }
}

