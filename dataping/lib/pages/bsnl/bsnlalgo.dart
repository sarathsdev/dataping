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
                  if (pp > 500 && pp <=1000) {
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
                        child:  ListView(
                        children: [
                           Card(
                              child: ListTile(
                            title: Text("₹56 \nValidity : 10 days\nData : 10GB"),
                          )),
                           Card(
                              child: ListTile(
                            title: Text("₹87 \nValidity : 14 days\nData : 1GB/day"),
                          )),
                          Card(
                            child: ListTile(
                              title: Text("₹98 \nValidity : 22 days\nData : 2GB/day"),
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
                child: abc == 'b'
                    ? new Container(
                        child: ListView(
                        children: [
                           Card(
                              child: ListTile(
                            title: Text("₹153 \nValidity : 28 days\nData : 1GB/day"),
                          )),
                           Card(
                              child: ListTile(
                            title: Text("₹187 \nValidity : 28 days\nData : 2GB/day"),
                          )),
                           Card(
                              child: ListTile(
                            title: Text("₹198 \nValidity : 50 days\nData : 2GB/day"),
                          )),
                          Card(
                            child: ListTile(
                              title: Text("₹251 \nValidity : 28 days\nData : 70GB"),
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
                        child:  ListView(
                        children: [
                           Card(
                              child: ListTile(
                            title: Text("₹597 \nValidity : 180 days\nData : 6GB"),
                          )),
                          Card(
                            child: ListTile(
                              title: Text("₹599 \nValidity : 84 days\nData : 5GB/day"),
                            ),
                          ),
                          Card(
                              child: ListTile(
                            title: Text("₹997 \nValidity : 180 days\nData : 3GB/day "),
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
