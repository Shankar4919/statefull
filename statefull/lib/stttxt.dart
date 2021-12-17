// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyStateful extends StatefulWidget {
  const MyStateful({Key? key}) : super(key: key);

  @override
  _MyStatefulState createState() => _MyStatefulState();
}

class _MyStatefulState extends State<MyStateful> {
  String name = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              onChanged: (String value) {
                setState(() {
                  name = value;
                });
              },
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                labelText: 'Name',
                hintText: 'Your Xakke Friends',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Your Xakke friend is $name',
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    ));
  }
}
