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
              style: ElevatedButton.styleFrom(primary: Colors.pink),
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
                              title: Text("₹25 \nValidity : Existing Plan\nData : 2GB"),
                            ),
                          ),
                          Card(
                              child: ListTile(
                            title: Text("₹61 \nValidity : Existing Plan\nData : 6GB"),
                          )),
                        ],
                        shrinkWrap: true,
                        reverse: true,
                        padding: EdgeInsets.all(10),
                      )
                        //Text('<100'),
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
                            title: Text("₹149 \nValidity : 20 days\nData : 1GB/day\n*Extra jio features"),
                          )),
                           Card(
                              child: ListTile(
                            title: Text("₹199 \nValidity : 24 days\nData : 1GB/day\n*Extra jio features"),
                          )),
                          Card(
                            child: ListTile(
                              title: Text("₹209 \nValidity : 28 days\nData : 1GB/day\n*Extra jio features"),
                            ),
                          ),
                          Card(
                              child: ListTile(
                            title: Text("₹239 \nValidity : 28 days\nData : 1.5GB/day\n*Extra jio features"),
                          )),
                          Card(
                              child: ListTile(
                            title: Text("₹299 \nValidity : 28 days\nData : 2GB/day\n*Extra jio features"),
                          )),
                         
                        ],
                        shrinkWrap: true,
                        reverse: true,
                        padding: EdgeInsets.all(10),
                      )
                        //Text('<100'),
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
                            title: Text("₹601 \nValidity : 28 days\nData : 3GB/day + 6 GB\n*Extra jio features"),
                          )),
                           Card(
                              child: ListTile(
                            title: Text("₹666 \nValidity : 84 days\nData : 1.5GB/day\n*Extra jio features"),
                          )),
                          Card(
                            child: ListTile(
                              title: Text("₹659 \nValidity : 56 days\nData : 1.5GB/day\n*Extra jio features"),
                            ),
                          ),
                          Card(
                              child: ListTile(
                            title: Text("₹799 \nValidity : 56 days\nData : 2GB/day \n*Extra jio features"),
                          )),   
                        ],
                        shrinkWrap: true,
                        reverse: true,
                        padding: EdgeInsets.all(10),
                      )
                        //Text('<100'),
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
