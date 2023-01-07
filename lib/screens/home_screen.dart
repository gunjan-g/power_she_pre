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
    'gQDByCdjUXw',
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

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbase,
      extendBodyBehindAppBar: true,
      appBar:  AppBar(
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
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  _title[index],
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5.0,
                ),
                YoutubePlayer(
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
              ],
            ),
          );
        },
        itemCount: _controllers.length,
        separatorBuilder: (context, _) => const SizedBox(height: 1.0),
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
