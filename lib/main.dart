import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:power_she_pre/screens/onboard/onboardScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:power_she_pre/screens/course.dart';
import 'package:power_she_pre/screens/home_screen.dart';
import 'package:power_she_pre/screens/splash.dart';
import 'package:power_she_pre/screens/authentication/login.dart';
import 'package:power_she_pre/screens/authentication/registration.dart';
import 'package:power_she_pre/screens/welcome_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:power_she_pre/screens/opr_screen.dart';
// import 'package:power_she_pre/screens/safety_screen.dart';
import 'package:power_she_pre/screens/phone_details.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashScreen(),
      theme: ThemeData(
        textTheme: GoogleFonts.dosisTextTheme(Theme.of(context).textTheme),
      ),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        OnboardScreen.id: (context) => const OnboardScreen(),
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        RegisterationScreen.id: (context) => RegisterationScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
        Course.id: (context) => const Course(),
        OprScreen.id: (context) => const OprScreen(),
        // SafetyScreen.id: (context) => const SafetyScreen(),
        PhoneDetails.id: (context) => const PhoneDetails(),
      },
    );
  }
}

