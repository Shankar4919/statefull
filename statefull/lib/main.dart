// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'retrieve.dart';
import 'stttxt.dart';

import 'form_validation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Adding Two Number",
      home: AddNumber(),
    );
  }
}
