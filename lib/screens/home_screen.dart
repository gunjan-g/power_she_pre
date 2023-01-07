import'package:flutter/material.dart';
import'package:power_she_pre/constants.dart';
import'package:power_she_pre/screens/splash.dart';
import'dart:async';
import'package:power_she_pre/screens/welcome_screen.dart';
import 'package:sidebarx/sidebarx.dart';
import '../components/appBarInit.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomeScreen extends StatefulWidget{
static const String id="home_screen";
const HomeScreen({Key?key}):super(key:key);

@override
State<HomeScreen> createState()=>_HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late YoutubePlayerController _controller;
  late TextEditingController _idController;
  late TextEditingController _seekToController;

  late PlayerState _playerState;
  late YoutubeMetaData _videoMetaData;
  //double _volume = 100;
  //bool _muted = false;
  bool _isPlayerReady = false;

  final List<String> _ids = [
    'nPt8bK2gbaU',
    'gQDByCdjUXw',
    'iLnmTe5Q2Qw',
    '_WoCV4c6XOE',
    'KmzdUe0RSJo',
    '6jZDSSZZxjQ',
    'p2lYr3vM_1w',
    '7QUtEmBT_-w',
    '34_PXCzGw1M',
  ];

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: _ids.first,
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    )..addListener(listener);
    _idController = TextEditingController();
    _seekToController = TextEditingController();
    _videoMetaData = const YoutubeMetaData();
    _playerState = PlayerState.unknown;
  }

  void listener() {
    if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
      setState(() {
        _playerState = _controller.value.playerState;
        _videoMetaData = _controller.metadata;
      });
    }
  }

  final List<YoutubePlayerController> _controllers = [
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

  final List<String> _title = [
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
  void deactivate() {
    // Pauses video while navigating to next page.
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    _idController.dispose();
    _seekToController.dispose();
    super.dispose();
  }

  final items= [DropOne(), DropTwo(), DropThree()];

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
      body: Container(
          child:Column(
            children: [
              ExpansionTile(
                  title: Text("Videos 1"),
                  leading: Icon(Icons.videocam), //add icon
                  childrenPadding: EdgeInsets.only(left:60), //children padding
                  children: [
                    SizedBox(
                      height: 500,
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                           return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical:5.0),
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: klblue,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                elevation: 5,
                                margin: EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    SizedBox(
                                        height: 15.0
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
                                      child: YoutubePlayer(
                                        key: ObjectKey(_controllers[index]),
                                        controller: _controllers[index],
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
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(5), //apply padding to all four sides
                                      child: Text(
                                        _title[index],
                                        textAlign: TextAlign.center,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                            fontFamily: 'Lustria',
                                            color: kdblue,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                          );
                        },
                        itemCount: _controllers.length,
                        separatorBuilder: (context, _) => const SizedBox(height: 1.0),
                      ),
                    )
                  ]
              ),


              ExpansionTile(
                title: Text("Parent Category 2"),
                leading: Icon(Icons.person), //add icon
                childrenPadding: EdgeInsets.only(left:60), //children padding
                children: [
                  ListTile(
                    title: Text("Child Category 1"),
                    onTap: (){
                      //action on press
                    },
                  ),

                  ListTile(
                    title: Text("Child Category 2"),
                    onTap: (){
                      //action on press
                    },
                  ),

                  //more child menu
                ],
              )
            ],
          )
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
          SidebarXItem(icon: Icons.home, label: 'Home',onTap:(){}),
          SidebarXItem(icon: Icons.search, label: 'Search'),
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

class DropOne extends StatelessWidget {
  const DropOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class DropTwo extends StatelessWidget {
  const DropTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class DropThree extends StatelessWidget {
  const DropThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
