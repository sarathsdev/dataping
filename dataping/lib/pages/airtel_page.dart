import 'package:flutter/material.dart';

class FourthRoute extends StatefulWidget {
  const FourthRoute({Key? key}) : super(key: key);

  @override
  State<FourthRoute> createState() => _FourthRouteState();
}

class _FourthRouteState extends State<FourthRoute> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController priceEditingController = TextEditingController();
 
  
  @override
  void dispose() {
  super.dispose();
  priceEditingController.dispose();
  
}
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Airtel"),
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
          TextFormField(
            controller: priceEditingController,
            keyboardType: TextInputType.number,
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
                  var value1 = priceEditingController.text;
                  print('Validity:'+ value1);
                
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
