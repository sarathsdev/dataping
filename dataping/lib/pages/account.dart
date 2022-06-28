// ignore_for_file: unnecessary_new

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Userdot extends StatefulWidget {
  const Userdot({Key? key, required User user})
      : _user = user,
        super(key: key);

  final User _user;

  @override
  State<Userdot> createState() => _UserdotState();
}

class _UserdotState extends State<Userdot> {
  late User _user;
  @override
  void initState() {
    _user = widget._user;

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: Text('Account'),
        ),
        body: new Center(
          child: new Column(
            children: <Widget>[
              
              Padding(
                padding: const EdgeInsets.fromLTRB(0,230,0,0),
                child: ClipOval(
                  child: Material(
                    child: Image.network(
                      _user.photoURL!,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
              SizedBox(height:6.0),
              Text(
                _user.displayName!,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                '( ${_user.email!} )',
                style: TextStyle(
                  fontSize: 17,
                  letterSpacing: 0.5,
                ),
              ),
            ],
          ),
        ));
  }
}
