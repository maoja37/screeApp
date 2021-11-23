import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scree/Screens/LoginProcess/login_screen.dart';
import 'package:scree/Screens/LoginProcess/welcome_screen.dart';
import 'package:scree/constants.dart';

class ForgetPasswordScreen extends StatefulWidget {
  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 24, right: 24, top: 64),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Image.asset('assets/images/back_button.png',
                          height: 54, width: 150)),
                ],
              ),
              
              Text(
                'Forgot Password',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: primary2,
                ),
              ),
              SizedBox(height: 75),
              Text('Input the email address you signed up with', style: TextStyle(color: Color(0xff303030), fontWeight: FontWeight.w400)),
              SizedBox(height: 60),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  labelText: 'Email Address',
                  labelStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 48),
              
             
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)),
                color: primary1,
                onPressed: () {
                   Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => WelcomeScreen())  , (route) => false);
                },
                minWidth: double.infinity,
                padding: EdgeInsets.symmetric(
                  vertical: 18,
                ),
                child: Text(
                  'Continue',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ),

              SizedBox(height: 20,),
              
              
            ],
          ),
        ),
      ),
    );
  }
}
