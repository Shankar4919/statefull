import 'package:flutter/material.dart';

class AddNumber extends StatefulWidget {
  const AddNumber({Key? key}) : super(key: key);

  @override
  State<AddNumber> createState() => _AddNumberState();
}

class _AddNumberState extends State<AddNumber> {
  TextEditingController firstnum = TextEditingController();
  TextEditingController secondnum = TextEditingController();
  String result = "0";
//1.  Global key for form.
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: const Text('Form: Adding Two Numbers'),
      ),
      body: SingleChildScrollView(
        
      
        child: Padding(

          padding: const EdgeInsets.all(30.0),
          child: Form(
            key: _formkey,
            child: Column(
              
              children: [
                TextFormField(
                  //2. textform field with validator logic
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "field cannot be empty";
                    }
                    return null;
                  },
                  controller: firstnum,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: 'Enter the first number',
                    labelText: 'First Number',
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "field cannot be empty";
                    }
                    return null;
                  },
                  controller: secondnum,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: 'Enter the second number',
                    labelText: 'Second Number',
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    //3. validate and submit(sum) the form using button.
                    if (_formkey.currentState!.validate()) {
                      setState(() {
                        int sum = int.parse(firstnum.text) +
                            int.parse(secondnum.text);
                        result = sum.toString();
                      });
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Somtething wrong")));
                    }
                  },
                  child: const Text("Sum"),
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Result",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Text(
                      result,
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}