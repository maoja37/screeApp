import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scree/Screens/DashboardScreens/bottom_nav_screen.dart';
import 'package:scree/Screens/LoginProcess/onboarding1.dart';


class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    // TODO: implement initState
  _navigateToHome();

    super.initState();
  }

  _navigateToHome()async{
    await Future.delayed(Duration(milliseconds: 7000), (){});

    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> OnboardingScreen() 
     ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/splash.png',
            fit: BoxFit.fill,
            height: double.infinity,
          ),
          Center(
            child: Image.asset('assets/images/logo.png', height: 72,width: 162,),
          )
        ],
      ),
    );
  }
}
