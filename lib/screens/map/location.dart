import 'package:flutter/material.dart';
import './home_page.dart';
import 'package:lottie/lottie.dart';

class Location extends StatelessWidget {
  static const String id = "location";
  const Location({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: SplashScreenLocation(),
    );
  }
}

class SplashScreenLocation extends StatefulWidget {
  const SplashScreenLocation({Key? key}) : super(key: key);

  @override
  _SplashScreenLocationState createState() => _SplashScreenLocationState();
}

class _SplashScreenLocationState extends State<SplashScreenLocation> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 10)).then((value) => Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            height: 200.0,
            width: 200.0,
            child: LottieBuilder.asset('assets/animassets/mapanimation.json')),
      ),
    );
  }
}
