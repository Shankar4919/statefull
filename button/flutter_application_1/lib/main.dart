import 'package:flutter/material.dart';
import 'package:flutter_application_1/mybtn.dart';
import "package:flutter_application_1/exercise.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RetriveText(),
    );
  }
}
