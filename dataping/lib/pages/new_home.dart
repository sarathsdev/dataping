import 'package:carousel_slider/carousel_slider.dart';
import 'package:dataping/pages/vi_page.dart';
import 'package:flutter/material.dart';
import 'package:dataping/pages/home_page.dart';
import 'package:dataping/pages/jio_page.dart';
import 'package:dataping/pages/airtel_page.dart';
import 'package:dataping/pages/bsnl_page.dart';
import 'package:dataping/pages/jio_page.dart';


import 'package:firebase_auth/firebase_auth.dart';
import 'package:dataping/res/custom_colors.dart';
import 'package:dataping/pages/sign_in_screen.dart';
import 'package:dataping/utils/authentication.dart';

class Home extends StatefulWidget {
  const Home({Key? key, required User user})
      : _user = user,
        super(key: key);

  final User _user;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late User _user;
  bool _isSigningOut = false;
  Route _routeToSignInScreen() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => SignInScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(-1.0, 0.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
  @override
   void initState() {
    _user = widget._user;

    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'DATAPING',
          style: TextStyle(
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.bold,
              fontSize: 23.0),
        ),
        backgroundColor: Color.fromARGB(185, 253, 49, 100),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_active_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.album_outlined),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(185, 253, 49, 100),
              ),
              accountName: Text(
                _user.displayName!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
              accountEmail: Text(
                '( ${_user.email!} )',
                style: TextStyle(
                  color : Colors.white,
                  fontSize: 10,
                  letterSpacing: 0.5,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor:Colors.white,
                child: Icon(
                  Icons.person,
                  size: 50,
                ),
              ),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
              leading: Icon(Icons.home),
            ),
            Divider(),
            ListTile(
              title: const Text('Account'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
              leading: Icon(Icons.account_circle),
            ),
            Divider(),
            ListTile(
              title: const Text('Rewards'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
              leading: Icon(Icons.card_giftcard),
            ),
            Divider(),
            ListTile(
              title: const Text('Preferences'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
              leading: Icon(Icons.precision_manufacturing),
            ),
            Divider(),
            ListTile(
              title: const Text('Settings'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
              leading: Icon(
                Icons.settings,
              ),
            ),
            Divider(),
            
            ListTile(
              title: const Text('Logout'),
              /*onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
              leading: Icon(Icons.logout_outlined),*/
              
              onTap: () async {
                        setState(() {
                          _isSigningOut = true;
                        });
                        await Authentication.signOut(context: context);
                        setState(() {
                          _isSigningOut = false;
                        });
                        Navigator.of(context)
                            .pushReplacement(_routeToSignInScreen());
                      },
            ),
            Divider(),
            SizedBox(
              height: 170.0,
            ),
            ListTile(
              title: const Text('Copyright © 2022'),
            ),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          ListView(
            children: [
              CarouselSlider(
                items: [
                  //1st Image of Slider

                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("assets/2.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("assets/3.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("assets/4.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("assets/5.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
                options: CarouselOptions(
                  height: 180.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 240, left: 10, right: 10, bottom: 40),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 20.0, width: 50.0),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecondRoute()),
                    );
                  },
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "assets/JIO.png",
                        width: 45,
                        height: 45,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0, width: 50.0),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ThirdRoute()),
                    );
                  },
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "assets/BSNL.jpg",
                        width: 45,
                        height: 45,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0, width: 50.0),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.only(top: 340, left: 10, right: 10, bottom: 40),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 20.0, width: 50.0),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FourthRoute()),
                    );
                  },
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "assets/AIRTEL.png",
                        width: 45,
                        height: 45,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0, width: 50.0),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FifthRoute()),
                    );
                  },
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "assets/VI.png",
                        width: 45,
                        height: 45,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0, width: 50.0),


                /* Row(),
              _user.photoURL != null
                  ? ClipOval(
                      child: Material(
                        color: CustomColors.firebaseGrey.withOpacity(0.3),
                        child: Image.network(
                          _user.photoURL!,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    )
                  : ClipOval(
                      child: Material(
                        color: CustomColors.firebaseGrey.withOpacity(0.3),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Icon(
                            Icons.person,
                            size: 60,
                            color: CustomColors.firebaseGrey,
                          ),
                        ),
                      ),
                    ),*/
              SizedBox(height: 16.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
