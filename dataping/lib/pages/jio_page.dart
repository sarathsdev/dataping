import 'package:flutter/material.dart';
import 'jioalgo.dart';

class SecondRoute extends StatefulWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _price = TextEditingController();
  
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jio"),
        backgroundColor: const Color.fromARGB(185, 253, 49, 100),
      ),
     body:SingleChildScrollView(
       child:Column(
       children: [
         Form(
      key: _formKey,
      child: Center(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height:30.0),
          Center(child: Text('Enter  the Data Pack Price:'),),
          TextFormField(
            controller: _price,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              //hintText: 'Input the Data Pack Price',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          
          
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.pink),
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState!.validate()) {
                  // Process data.
                  Navigator.of(context).push(MaterialPageRoute(builder:((context) => Algo(price: _price.text))));           
                }
              },
              child: const Text('Submit'),
            ),
          ),
         
          
          
        ],
      ),
     ),
         ),
        
       ],
     ), 
     ), 
    );
  }
}


