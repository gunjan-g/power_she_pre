import'package:flutter/material.dart';
import'package:power_she_pre/constants.dart';
// import 'package:power_she_pre/screens/safety_screen.dart';
import'package:power_she_pre/screens/splash.dart';
import 'package:power_she_pre/screens/store.dart';
import'dart:async';
import'package:power_she_pre/screens/welcome_screen.dart';
import 'package:sidebarx/sidebarx.dart';
import '../components/appBarInit.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'orders.dart';

import 'package:power_she_pre/screens/opr_screen.dart';

class HomeScreen extends StatefulWidget{
static const String id="home_screen";
const HomeScreen({Key?key}):super(key:key);

@override
State<HomeScreen> createState()=>_HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<YoutubePlayerController> _business = [
    'ysM3Qbw_pMo',
    '3soVHA-f1zQ',
    '8eTF7OOrxDM',
    'ivqXzw9imXo',
    'iUo8QX2Pjj4',
    'sgsSd2FghyU',
  ]
      .map<YoutubePlayerController>(
        (videoId) => YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    ),
  )
      .toList();

  final List<String> _businessTitle = [
    '3 Business Fundamentals',
    'Complete Knowledge of Business in 10 steps',
    'How to Improve Business Skills?',
    '15 Business Ideas For Women 2022',
    'Top 10 business ideas for women at home',
    '9 Business Ideas for Women',
  ];

  final List<YoutubePlayerController> _safety = [
    'MCFWoJSVgH4',
    'Ww1DeUSC94o',
    'J9lZ9OHdahg',
    'scvi2EemtDw',
  ]
      .map<YoutubePlayerController>(
        (videoId) => YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    ),
  )
      .toList();

  final List<String> _safetyTitle = [
    'Safety tips for Women',
    '30 EASY SELF-DEFENSE TIPS',
    '5 things women can use for safety',
    'Make Your City Safe | Women Safety Video',
  ];

  final List<YoutubePlayerController> _health = [
    'E4EaRk6r_SM',
    'iLnmTe5Q2Qw',
    '_WoCV4c6XOE',
    'KmzdUe0RSJo',
  ]
      .map<YoutubePlayerController>(
        (videoId) => YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    ),
  )
      .toList();

  final List<String> _healthTitle = [
    'Health Tips for Women',
    '2',
    '3',
    '4',
  ];

  final List<YoutubePlayerController> _personality = [
    'qS4ViqnjkC8',
    'iLnmTe5Q2Qw',
    '_WoCV4c6XOE',
    'KmzdUe0RSJo',
    '6jZDSSZZxjQ',
    'p2lYr3vM_1w',
    '7QUtEmBT_-w',
    '34_PXCzGw1M',
  ]
      .map<YoutubePlayerController>(
        (videoId) => YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    ),
  )
      .toList();

  final List<String> _personalityTitle = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
  ];

  final List<YoutubePlayerController> _parenting = [
    'qS4ViqnjkC8',
    'iLnmTe5Q2Qw',
    '_WoCV4c6XOE',
    'KmzdUe0RSJo',
    '6jZDSSZZxjQ',
    'p2lYr3vM_1w',
    '7QUtEmBT_-w',
    '34_PXCzGw1M',
  ]
      .map<YoutubePlayerController>(
        (videoId) => YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    ),
  )
      .toList();

  final List<String> _parentingTitle = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
  ];

  final List<YoutubePlayerController> _finance = [
    'qS4ViqnjkC8',
    'iLnmTe5Q2Qw',
    '_WoCV4c6XOE',
    'KmzdUe0RSJo',
    '6jZDSSZZxjQ',
    'p2lYr3vM_1w',
    '7QUtEmBT_-w',
    '34_PXCzGw1M',
  ]
      .map<YoutubePlayerController>(
        (videoId) => YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    ),
  )
      .toList();

  final List<String> _financeTitle = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
  ];

  final List<YoutubePlayerController> _empower = [
    'qS4ViqnjkC8',
    'iLnmTe5Q2Qw',
    '_WoCV4c6XOE',
    'KmzdUe0RSJo',
    '6jZDSSZZxjQ',
    'p2lYr3vM_1w',
    '7QUtEmBT_-w',
    '34_PXCzGw1M',
  ]
      .map<YoutubePlayerController>(
        (videoId) => YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    ),
  )
      .toList();

  final List<String> _empowerTitle = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbase,
      //extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: kpink,
        title: Padding(
          padding: const EdgeInsets.only(right: 0),
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
      body: SingleChildScrollView(
        child: Container(
            child:Column(
              children: [
                ExpansionTile(
                    title: Text("Business"),
                    leading: Icon(Icons.videocam), //add icon
                    //childrenPadding: EdgeInsets.only(left:10), //children padding
                    children: [
                      SizedBox(
                        height: 550,
                        child: ListView.separated(
                          itemBuilder: (context, index) {
                             return Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical:5.0),
                                child: Card(
                                  margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                                  elevation: 10,
                                  shadowColor: Colors.black,
                                  color: Colors.white,
                                  child: SizedBox(
                                    width: 200,
                                    //height: 360,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        children: [
                                          //CircleAvatar
                                          //SizedBox
                                          //Text
                                          SizedBox(
                                            height: 10,
                                          ),

                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(5),
                                            child: Container(
                                              width: MediaQuery.of(context).size.width,
                                              height: 200,
                                              child: YoutubePlayer(
                                                key: ObjectKey(_business[index]),
                                                controller: _business[index],
                                                actionsPadding: const EdgeInsets.only(left: 16.0),
                                                bottomActions: [
                                                  CurrentPosition(),
                                                  const SizedBox(width: 10.0),
                                                  ProgressBar(isExpanded: true),
                                                  const SizedBox(width: 10.0),
                                                  RemainingDuration(),
                                                  FullScreenButton(),
                                                ],
                                              ),
                                            ), // Container
                                          ), //Text
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                                                child: Text(
                                                  _businessTitle[index],
                                                  textAlign: TextAlign.center,
                                                  overflow: TextOverflow.ellipsis,
                                                  style: const TextStyle(
                                                      fontFamily: 'Lustria',
                                                      color: kdblue,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                              )),
                                        ],
                                      ), //Column
                                    ), //Padding
                                  ),
                                ),
                            );
                          },
                          itemCount: _business.length,
                          separatorBuilder: (context, _) => const SizedBox(height: 1.0),
                        ),
                      ),
                    ]
                ),

                ExpansionTile(
                    title: Text("Safety"),
                    leading: Icon(Icons.videocam), //add icon
                    //childrenPadding: EdgeInsets.only(left:10), //children padding
                    children: [
                      SizedBox(
                        height: 550,
                        child: ListView.separated(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical:5.0),
                              child: Card(
                                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                                elevation: 10,
                                shadowColor: Colors.black,
                                color: Colors.white,
                                child: SizedBox(
                                  width: 200,
                                  // height: 360,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),

                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(5),
                                          child: Container(
                                            width: MediaQuery.of(context).size.width,
                                            height: 150,
                                            child: YoutubePlayer(
                                              key: ObjectKey(_safety[index]),
                                              controller: _safety[index],
                                              actionsPadding: const EdgeInsets.only(left: 16.0),
                                              bottomActions: [
                                                CurrentPosition(),
                                                const SizedBox(width: 10.0),
                                                ProgressBar(isExpanded: true),
                                                const SizedBox(width: 10.0),
                                                RemainingDuration(),
                                                FullScreenButton(),
                                              ],
                                            ),
                                          ), // Container
                                        ), //Text
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                                              child: Text(
                                                _safetyTitle[index],
                                                textAlign: TextAlign.center,
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                    fontFamily: 'Lustria',
                                                    color: kdblue,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            )),
                                      ],
                                    ), //Column
                                  ), //Padding
                                ),
                              ),
                            );
                          },
                          itemCount: _safety.length,
                          separatorBuilder: (context, _) => const SizedBox(height: 1.0),
                        ),
                      ),
                    ]
                ),

                ExpansionTile(
                    title: Text("Health"),
                    leading: Icon(Icons.videocam), //add icon
                    //childrenPadding: EdgeInsets.only(left:10), //children padding
                    children: [
                      SizedBox(
                        height: 550,
                        child: ListView.separated(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical:5.0),
                              child: Card(
                                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                                elevation: 10,
                                shadowColor: Colors.black,
                                color: Colors.white,
                                child: SizedBox(
                                  width: 200,
                                  // height: 360,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),

                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(5),
                                          child: Container(
                                            width: MediaQuery.of(context).size.width,
                                            height: 150,
                                            child: YoutubePlayer(
                                              key: ObjectKey(_health[index]),
                                              controller: _health[index],
                                              actionsPadding: const EdgeInsets.only(left: 16.0),
                                              bottomActions: [
                                                CurrentPosition(),
                                                const SizedBox(width: 10.0),
                                                ProgressBar(isExpanded: true),
                                                const SizedBox(width: 10.0),
                                                RemainingDuration(),
                                                FullScreenButton(),
                                              ],
                                            ),
                                          ), // Container
                                        ), //Text
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                                              child: Text(
                                                _healthTitle[index],
                                                textAlign: TextAlign.center,
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                    fontFamily: 'Lustria',
                                                    color: kdblue,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            )),
                                      ],
                                    ), //Column
                                  ), //Padding
                                ),
                              ),
                            );
                          },
                          itemCount: _health.length,
                          separatorBuilder: (context, _) => const SizedBox(height: 1.0),
                        ),
                      ),
                    ]
                ),

                ExpansionTile(
                    title: Text("Personality"),
                    leading: Icon(Icons.videocam), //add icon
                    //childrenPadding: EdgeInsets.only(left:10), //children padding
                    children: [
                      SizedBox(
                        height: 550,
                        child: ListView.separated(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical:5.0),
                              child: Card(
                                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                                elevation: 10,
                                shadowColor: Colors.black,
                                color: Colors.white,
                                child: SizedBox(
                                  width: 200,
                                  // height: 360,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      children: [
                                        //CircleAvatar
                                        //SizedBox
                                        //Text
                                        SizedBox(
                                          height: 10,
                                        ),

                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(5),
                                          child: Container(
                                            width: MediaQuery.of(context).size.width,
                                            height: 150,
                                            child: YoutubePlayer(
                                              key: ObjectKey(_personality[index]),
                                              controller: _personality[index],
                                              actionsPadding: const EdgeInsets.only(left: 16.0),
                                              bottomActions: [
                                                CurrentPosition(),
                                                const SizedBox(width: 10.0),
                                                ProgressBar(isExpanded: true),
                                                const SizedBox(width: 10.0),
                                                RemainingDuration(),
                                                FullScreenButton(),
                                              ],
                                            ),
                                          ), // Container
                                        ), //Text
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                                              child: Text(
                                                _personalityTitle[index],
                                                textAlign: TextAlign.center,
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                    fontFamily: 'Lustria',
                                                    color: kdblue,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            )),
                                      ],
                                    ), //Column
                                  ), //Padding
                                ),
                              ),
                            );
                          },
                          itemCount: _personality.length,
                          separatorBuilder: (context, _) => const SizedBox(height: 1.0),
                        ),
                      ),
                    ]
                ),

                ExpansionTile(
                    title: Text("Parenting"),
                    leading: Icon(Icons.videocam), //add icon
                    //childrenPadding: EdgeInsets.only(left:10), //children padding
                    children: [
                      SizedBox(
                        height: 550,
                        child: ListView.separated(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical:5.0),
                              child: Card(
                                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                                elevation: 10,
                                shadowColor: Colors.black,
                                color: Colors.white,
                                child: SizedBox(
                                  width: 200,
                                  // height: 360,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      children: [
                                        //CircleAvatar
                                        //SizedBox
                                        //Text
                                        SizedBox(
                                          height: 10,
                                        ),

                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(5),
                                          child: Container(
                                            width: MediaQuery.of(context).size.width,
                                            height: 150,
                                            child: YoutubePlayer(
                                              key: ObjectKey(_parenting[index]),
                                              controller: _parenting[index],
                                              actionsPadding: const EdgeInsets.only(left: 16.0),
                                              bottomActions: [
                                                CurrentPosition(),
                                                const SizedBox(width: 10.0),
                                                ProgressBar(isExpanded: true),
                                                const SizedBox(width: 10.0),
                                                RemainingDuration(),
                                                FullScreenButton(),
                                              ],
                                            ),
                                          ), // Container
                                        ), //Text
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                                              child: Text(
                                                _parentingTitle[index],
                                                textAlign: TextAlign.center,
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                    fontFamily: 'Lustria',
                                                    color: kdblue,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            )),
                                      ],
                                    ), //Column
                                  ), //Padding
                                ),
                              ),
                            );
                          },
                          itemCount: _parenting.length,
                          separatorBuilder: (context, _) => const SizedBox(height: 1.0),
                        ),
                      ),
                    ]
                ),

                ExpansionTile(
                    title: Text("Financial Management"),
                    leading: Icon(Icons.videocam), //add icon
                    //childrenPadding: EdgeInsets.only(left:10), //children padding
                    children: [
                      SizedBox(
                        height: 550,
                        child: ListView.separated(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical:5.0),
                              child: Card(
                                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                                elevation: 10,
                                shadowColor: Colors.black,
                                color: Colors.white,
                                child: SizedBox(
                                  width: 200,
                                  // height: 360,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      children: [
                                        //CircleAvatar
                                        //SizedBox
                                        //Text
                                        SizedBox(
                                          height: 10,
                                        ),

                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(5),
                                          child: Container(
                                            width: MediaQuery.of(context).size.width,
                                            height: 150,
                                            child: YoutubePlayer(
                                              key: ObjectKey(_finance[index]),
                                              controller: _finance[index],
                                              actionsPadding: const EdgeInsets.only(left: 16.0),
                                              bottomActions: [
                                                CurrentPosition(),
                                                const SizedBox(width: 10.0),
                                                ProgressBar(isExpanded: true),
                                                const SizedBox(width: 10.0),
                                                RemainingDuration(),
                                                FullScreenButton(),
                                              ],
                                            ),
                                          ), // Container
                                        ), //Text
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                                              child: Text(
                                                _financeTitle[index],
                                                textAlign: TextAlign.center,
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                    fontFamily: 'Lustria',
                                                    color: kdblue,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            )),
                                      ],
                                    ), //Column
                                  ), //Padding
                                ),
                              ),
                            );
                          },
                          itemCount: _finance.length,
                          separatorBuilder: (context, _) => const SizedBox(height: 1.0),
                        ),
                      ),
                    ]
                ),

                ExpansionTile(
                    title: Text("Women Empowerment"),
                    leading: Icon(Icons.videocam), //add icon
                    //childrenPadding: EdgeInsets.only(left:10), //children padding
                    children: [
                      SizedBox(
                        height: 550,
                        child: ListView.separated(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical:5.0),
                              child: Card(
                                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                                elevation: 10,
                                shadowColor: Colors.black,
                                color: Colors.white,
                                child: SizedBox(
                                  width: 200,
                                  // height: 360,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      children: [
                                        //CircleAvatar
                                        //SizedBox
                                        //Text
                                        SizedBox(
                                          height: 10,
                                        ),

                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(5),
                                          child: Container(
                                            width: MediaQuery.of(context).size.width,
                                            height: 150,
                                            child: YoutubePlayer(
                                              key: ObjectKey(_empower[index]),
                                              controller: _empower[index],
                                              actionsPadding: const EdgeInsets.only(left: 16.0),
                                              bottomActions: [
                                                CurrentPosition(),
                                                const SizedBox(width: 10.0),
                                                ProgressBar(isExpanded: true),
                                                const SizedBox(width: 10.0),
                                                RemainingDuration(),
                                                FullScreenButton(),
                                              ],
                                            ),
                                          ), // Container
                                        ), //Text
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                                              child: Text(
                                                _empowerTitle[index],
                                                textAlign: TextAlign.center,
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                    fontFamily: 'Lustria',
                                                    color: kdblue,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            )),
                                      ],
                                    ), //Column
                                  ), //Padding
                                ),
                              ),
                            );
                          },
                          itemCount: _empower.length,
                          separatorBuilder: (context, _) => const SizedBox(height: 1.0),
                        ),
                      ),
                    ]
                ),

              ],
            )
        ),
      ),
      endDrawer:SidebarX(
        controller: SidebarXController(selectedIndex: 0, extended: true),
        theme: SidebarXTheme(
          selectedItemDecoration: BoxDecoration(
            color:kpink
          ),
          // padding: EdgeInsets.all(20),
          width:200,
          decoration: BoxDecoration(
            color: klblue
          ),
          textStyle: TextStyle(
            fontSize:20,
            color: kdblue,
          ),
          selectedTextStyle: TextStyle(
            fontSize: 20,
            color:kbase,
          ),
          selectedIconTheme: IconThemeData(
            color: kbase
          ),
          iconTheme: IconThemeData(
            color: kdblue
          ),
          selectedItemTextPadding: EdgeInsets.only(left:20),
          itemTextPadding: EdgeInsets.only(left:20),
        ),
        items: [
          SidebarXItem(icon: Icons.home, label: 'Profile',onTap:(){}),
          SidebarXItem(icon: Icons.search, label: 'My Orders',onTap:(){Navigator.pushNamed(context, OrderScreen.id);}),
          SidebarXItem(icon:Icons.add_box,label:'My Products',onTap:(){}),
          SidebarXItem(icon:Icons.arrow_back_ios_new_outlined,label:'Logout',onTap:(){}),
        ],
      ),
      bottomNavigationBar: Container(
        height: 90,
        child: Stack(
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
                        Padding(
                          padding: const EdgeInsets.only(left:13.0),
                          child: MaterialButton(
                            minWidth: 40,
                            onPressed: () {

                              //   currentScreen = HomeScreen();
                              //   currentTab = 0;
                              // });
                              Navigator.pushNamed(context, StoreScreen.id);
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
                            Navigator.pushNamed(context, OprScreen.id);
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
                    // Navigator.pushNamed(context, SafetyScreen.id);
                  },
                  backgroundColor: kdblue,
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
      )
    );
  }
}

