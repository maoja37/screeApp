import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:scree/Screens/WebsiteSetup/site_about.dart';
import 'package:scree/constants.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 184),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Color(0xffFEEBE6),
              radius: 112,
              child: Image.asset('assets/images/signup_finished.png',
                  height: 217, width: 217),
            ),
            SizedBox(
              height: 44,
            ),
            Text(
              'Welcome to Scree',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w800),
            ),
            SizedBox(height: 10,),
            Text(
              'Start creating your very own\ncustomizable website',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w400, height: 1.5),
            ),
            SizedBox(
              height: 108,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
              color: primary1,
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=> SiteAbooutScreen()), (route) => false);
                
              },
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 18),
              child: Text(
                'Start Creating',
                style:
                    TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
