// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Textfldeg extends StatelessWidget {
  const Textfldeg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: TextField(
          textCapitalization: TextCapitalization.characters,
          keyboardType: TextInputType.number,
          // obscureText: true,
          // textInputAction: TextInputAction.go,
          // keyboardType: TextInputType.emailAddress,
          // keyboardAppearance:  ,
          // maxLength: 4,
          // maxLines: 2,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          decoration: InputDecoration(
              icon: Icon(Icons.people),
              labelText: 'Name',
              hintText: "Enter your name",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
        ),
      )),
    );
  }
}
