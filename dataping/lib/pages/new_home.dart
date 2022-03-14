import 'package:carousel_slider/carousel_slider.dart';
import 'package:dataping/pages/vi_page.dart';
import 'package:flutter/material.dart';
import 'package:dataping/pages/home_page.dart';
import 'package:dataping/pages/jio_page.dart';
import 'package:dataping/pages/airtel_page.dart';
import 'package:dataping/pages/bsnl_page.dart';
import 'package:dataping/pages/jio_page.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
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
            const DrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(185, 253, 49, 100),
              ),
              child: Text('User Header'),
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
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
              leading: Icon(Icons.logout_outlined),
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

          /*ElevatedButton(
                    child: Text('Vi'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FifthRoute()),
                      );
                    },
                     style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(185, 253, 49, 100),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                textStyle: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold)),
                  ),*/

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
                /*ElevatedButton(
                    child: Text('Vi'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FifthRoute()),
                      );
                    },
                     style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(185, 253, 49, 100),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                textStyle: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold)),
                  ),*/
              ],
            ),
          ),
          Divider()
        ],
      ),
    );
  }
}
