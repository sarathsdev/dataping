import 'package:flutter/material.dart';

class SecondRoute extends StatefulWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Jio"),
          backgroundColor: const Color.fromARGB(185, 253, 49, 100),
        ),
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.all(20.0),
          child: Table(
            border: TableBorder.all(color: Colors.black),
            children: [
              TableRow(children: [
                Text('Cell 1'),
                Text('Cell 2'),
                Text('Cell 3'),
                Text('Cell 4'),
              ]),
              TableRow(children: [
                Text('Cell 1'),
                Text('Cell 2'),
                Text('Cell 3'),
                Text('Cell 4'),
              ]),
              TableRow(children: [
                Text('Cell 1'),
                Text('Cell 2'),
                Text('Cell 3'),
                Text('Cell 4'),
              ]),
              TableRow(children: [
                Text('Cell 1'),
                Text('Cell 2'),
                Text('Cell 3'),
                Text('Cell 4'),
              ])
            ],
          ),
        ));
  }
}
