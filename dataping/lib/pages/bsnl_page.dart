import 'package:flutter/material.dart';

class ThirdRoute extends StatefulWidget {
  const ThirdRoute({Key? key}) : super(key: key);

  @override
  State<ThirdRoute> createState() => _ThirdRouteState();
}

class _ThirdRouteState extends State<ThirdRoute> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController priceEditingController = TextEditingController();
  TextEditingController validityEditingController = TextEditingController();
  TextEditingController sizeEditingController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bsnl"),
        backgroundColor: const Color.fromARGB(185, 253, 49, 100),
      ),
     body:Column(
       children: [
         Form(
      key: _formKey,
      child: Center(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            controller: priceEditingController,
            decoration: const InputDecoration(
              hintText: 'Input the Data Pack Price',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          TextFormField(
            controller: validityEditingController,
            decoration: const InputDecoration(
              hintText: 'Input the Data Pack Validity',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          TextFormField(
            controller: sizeEditingController,
            decoration: const InputDecoration(
              hintText: 'Input the Data Pack Size',
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
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState!.validate()) {
                  // Process data.
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
    );
  }
}

