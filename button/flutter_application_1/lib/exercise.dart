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
  final mycontroller1 = TextEditingController();
  int sum = 0;

  bool _validate = false;
  bool _validate1 = false;

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
                  labelText: 'Value of A:',
                  hintText: 'Enter VAlue of A',
                  border: OutlineInputBorder(),
                  errorText: _validate ? "Field empty xa mula" : null,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                //step-2-->Use controller
                controller: mycontroller1,
                decoration: InputDecoration(
                  labelText: 'Value of B:',
                  hintText: 'Enter VAlue of B',
                  border: OutlineInputBorder(),
                  errorText: _validate1 ? "Field empty xa mula" : null,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              // Container(
              //   child: FloatingActionButton(
              //     onPressed: () {
              //       setState(() {
              //         name = mycontroller.text;
              //         name.isEmpty ? _validate = true : _validate = false;
              //       });
              //     },
              //     child: Icon(Icons.arrow_forward),
              //   ),
              // ),
              // Text(
              //   name,
              //   textScaleFactor: 4,
              // ),
              const SizedBox(height: 30),
              Container(
                child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    padding: const EdgeInsets.all(20),
                    minimumSize: const Size(100, 50),
                    backgroundColor: Colors.green,
                    primary: Colors.white,
                    elevation: 20,
                    shadowColor: Colors.yellow,
                    side: const BorderSide(color: Colors.red, width: 3),
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(32)),
                  ),
                  onPressed: () {
                    String num = mycontroller.text;
                    String num1 = mycontroller1.text;
                    int? cngNum = int.tryParse(num);
                    int? cngNum1 = int.tryParse(num1);
                    if (cngNum == null || cngNum1 == null) {
                      setState(() {
                        if (cngNum == null) {
                          _validate = true;
                        }
                        if (cngNum1 == null) {
                          _validate1 = true;
                        }
                      });
                    } else {
                      setState(() {
                        sum = cngNum + cngNum1;
                        _validate = false;
                        _validate1 = false;l

                        // num.isEmpty ? _validate = true : _validate = false;
                      });
                    }
                  },
                  child: const Text("Sum"),
                ),
              ),
              Text(
                sum.toString(),
                textScaleFactor: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
