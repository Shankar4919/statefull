// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

class RetriveText extends StatefulWidget {
  const RetriveText({Key? key}) : super(key: key);

  @override
  _RetriveTextState createState() => _RetriveTextState();
}

class _RetriveTextState extends State<RetriveText> {
  //step-1
  final mycontroller = TextEditingController();
  String name = '';

  bool _validate = false;

  @override
  void dispose() {
    mycontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.redAccent,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              TextField(
                //step-2-->Use controller
                controller: mycontroller,
                decoration: InputDecoration(
                  labelText: 'Coutnry',
                  hintText: 'Enter Your Country',
                  border: OutlineInputBorder(),
                  errorText: _validate ? "Field empty xa mula" : null,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      name = mycontroller.text;
                      name.isEmpty ? _validate = true : _validate = false;
                    });
                  },
                  child: Icon(Icons.arrow_forward),
                ),
              ),
              Text(
                name,
                textScaleFactor: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
