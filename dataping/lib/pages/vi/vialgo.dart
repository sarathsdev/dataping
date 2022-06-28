// ignore_for_file: deprecated_member_use
import 'dart:convert';
import 'package:flutter/material.dart';

class Algo extends StatefulWidget {
  final String? price;
  Algo({Key? key, required this.price}) : super(key: key);

  @override
  State<Algo> createState() => _AlgoState();
}

class _AlgoState extends State<Algo> {
  String newvalue = '';
  var pp;
  String abc = '';

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(185, 253, 49, 100),
      ),
      body: Center(
        child: Column(
          children: [
            //Text('${widget.price}'),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.pink),
              onPressed: () {
                //pp = '${widget.price}';
                setState(() {
                  newvalue = ('${widget.price}');
                  pp = int.parse(newvalue);
                  if (pp <= 100) {
                    abc = 'a';
                  }
                  ;
                  if (pp > 100 && pp <= 500) {
                    abc = 'b';
                  }
                  ;
                  if (pp > 500 && pp <= 1000) {
                    abc = 'c';
                  }
                  ;
                });

                //print(pp.runtimeType);
              },
              // ignore: prefer_const_constructors
        
           
              child: Text('Click here for results'),
            ),

            Center(
                child: abc == 'a'
                    ? new Container(
                        child: ListView(
                        children: [
                           Card(
                              child: ListTile(
                            title: Text("₹58 \nValidity : 28 days\nData : 3GB"),
                          )),
                           Card(
                              child: ListTile(
                            title: Text("₹82 \nValidity : 14 days\nData : 4GB"),
                          )),  
                        ],
                        shrinkWrap: true,
                        reverse: true,
                        padding: EdgeInsets.all(10),
                      ),
                      )
                    : new Container(
                        child: Text('.'),
                      )),
            Center(
                child: abc == 'b'
                    ? new Container(
                        child: ListView(
                        children: [
                           Card(
                              child: ListTile(
                            title: Text("₹118 \nValidity : 28 days\nData : 12GB"),
                          )),
                           Card(
                              child: ListTile(
                            title: Text("₹299 \nValidity : 28 days\nData : 1.5GB/day\n*Extra vi features"),
                          )),
                          Card(
                            child: ListTile(
                              title: Text("₹359 \nValidity : 28 days\nData : 3GB/day\n*Extra vi features"),
                            ),
                          ),
                          Card(
                              child: ListTile(
                            title: Text("₹475 \nValidity : 28 days\nData : 4GB/day \n*Extra vi features"),
                          )),  
                          Card(
                            child: ListTile(
                              title: Text("₹479 \nValidity : 56 days\nData : 1.5GB/day\n*Extra vi features"),
                            ),
                          ),
                          Card(
                            child: ListTile(
                              title: Text("₹499 \nValidity : 28 days\nData : 2GB/day\n*Extra vi features"),
                            ),
                          ), 
                        ],
                        shrinkWrap: true,
                        reverse: true,
                        padding: EdgeInsets.all(10),
                      ),
                      )
                    : new Container(
                        child: Text('.'),
                      )),
            Center(
                child: abc == 'c'
                    ? new Container(
                        child: ListView(
                        children: [
                           Card(
                              child: ListTile(
                            title: Text("₹539 \nValidity : 56 days\nData : 2GB/day\n*Extra vi features"),
                          )),
                           Card(
                              child: ListTile(
                            title: Text("₹666 \nValidity : 77 days\nData : 1.5GB/day\n*Extra vi features"),
                          )),
                          Card(
                            child: ListTile(
                              title: Text("₹699 \nValidity : 56 days\nData : 3GB/day\n*Extra vi features"),
                            ),
                          ),
                          Card(
                              child: ListTile(
                            title: Text("₹839 \nValidity : 84 days\nData : 2GB/day \n*Extra vi features"),
                          )),   
                        ],
                        shrinkWrap: true,
                        reverse: true,
                        padding: EdgeInsets.all(10),
                      ),
                      )
                    : new Container(
                        child: Text('.'),
                      )),

            
          ],
        ),

        //child:Text('Price: ${widget.price}'),),
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  // TODO: implement build
  throw UnimplementedError();
}
