import'package:flutter/material.dart';
import'package:power_she_pre/constants.dart';
import'package:power_she_pre/screens/splash.dart';
import'dart:async';
import'package:power_she_pre/screens/welcome_screen.dart';

import '../components/appBarInit.dart';


class HomeScreen extends StatefulWidget{
static const String id="home_screen";
const HomeScreen({Key?key}):super(key:key);

@override
State<HomeScreen> createState()=>_HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbase,
      appBar:  AppBar(
        backgroundColor: kpink,
        title: Padding(
          padding: const EdgeInsets.only(right: 40),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/logo.png',
                  fit: BoxFit.contain,
                  height: 32,
                ),
                Container(
                    padding: const EdgeInsets.all(8.0), child: Text('PowerShe'))
              ],

            ),
          ),
        ),
      ),
      bottomNavigationBar: Stack(
        children: [

          Align(
            alignment: Alignment.bottomCenter,
            child: BottomAppBar(
              clipBehavior: Clip.none,
              color: kpink,
              shape: CircularNotchedRectangle(),
              notchMargin: 10,
              child: Container(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        MaterialButton(
                          minWidth: 40,
                          onPressed: () {
                            setState(() {
                              // currentScreen = HomeScreen();
                              // currentTab = 0;
                            });

                            // Navigator.pushNamed(context, UploadImage.id);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.videocam,
                                color: Colors.white,
                                size: 20,
                              ),
                              Text(
                                'Tutorials',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                        ),
                        MaterialButton(
                          minWidth: 40,
                          onPressed: () {

                            //   currentScreen = HomeScreen();
                            //   currentTab = 0;
                            // });
                            // Navigator.pushNamed(context, NearMe.id);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.storefront,
                                color: Colors.white,
                                size: 20,
                              ),
                              Text(
                                'Store',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        MaterialButton(
                          minWidth: 40,
                          onPressed: () {
                            setState(() {
                              // currentScreen = HomeScreen();
                              // currentTab = 0;
                            });
                            // Navigator.pushNamed(context, AboutUs.id);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.groups,
                                color: Colors.white,
                                size: 20,
                              ),
                              Text(
                                'Support',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                        ),
                        MaterialButton(
                          minWidth: 40,
                          onPressed: () {
                            setState(() {
                              // currentScreen = HomeScreen();
                              // currentTab = 0;
                            });
                            // Navigator.pushNamed(context, UserProfile.id);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.school,
                                color: Colors.white,
                                size: 20,
                              ),
                              Text(
                                'Opportunities',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
              child: SizedBox(
                width: 68,
                height: 68,
                child: FloatingActionButton(
                  clipBehavior: Clip.none,
                  onPressed: () {
                  },
                  backgroundColor: Color(0xff88c0b5),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('images/safety.png'),
                  )
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
