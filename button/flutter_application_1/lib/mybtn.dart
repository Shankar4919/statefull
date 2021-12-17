import 'package:flutter/material.dart';

class MyButtons extends StatefulWidget {
  const MyButtons({Key? key}) : super(key: key);

  @override
  _MyButtonsState createState() => _MyButtonsState();
}

class _MyButtonsState extends State<MyButtons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button Example"),
      ),
      body: Center(
        
        child: Column(
          children: [
            
            const SizedBox(height: 30),
            TextButton(
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
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32)),
                ),
                onPressed: () {},
                child: const Text("Text")),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
                padding: const EdgeInsets.all(20),
                minimumSize: const Size(100, 50),
                onPrimary: Colors.red,
                primary: Colors.white,
                elevation: 20,
                shadowColor: Colors.blue,
                side: const BorderSide(color: Colors.green, width: 3),
                // shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(32)),
              ),
              onPressed: () {},
              child: const Text(
                'Elevated',
              ),
            ),
            const SizedBox(height: 30),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
                padding: const EdgeInsets.all(30),
                minimumSize: const Size(200, 100),
                backgroundColor: Colors.yellow,
                primary: Colors.white,
                elevation: 20,
                shadowColor: Colors.green,
                side: const BorderSide(color: Colors.blue, width: 3),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32)),
              ),
              onPressed: () {},
              child: const Text("Outlined"),
            ),
          ],
        ),
      ),
    );
  }
}
