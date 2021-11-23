import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scree/Screens/LoginProcess/login_screen.dart';
import 'package:scree/Screens/LoginProcess/welcome_screen.dart';
import 'package:scree/constants.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 24, right: 24, top: 68),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Image.asset('assets/images/close_big.png',
                      height: 24, width: 24)),
              SizedBox(
                height: 65,
              ),
              Text(
                'Sign up with email',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: primary2,
                ),
              ),
              SizedBox(height: 35),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  labelText: 'Username',
                  labelStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 40),
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
              SizedBox(height: 40),
              TextFormField(
                keyboardType: TextInputType.text,
                obscureText: _obscureText,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  labelText: 'Password',
                  labelStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                        print(_obscureText);
                      });
                    },
                    child: Icon(_obscureText
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined),
                  ),
                ),
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(
                height: 35,
              ),
              RichText(
                text: TextSpan(
                    text: 'By signing up you agree to the ',
                    style: TextStyle(
                        fontSize: 14,
                        color: primary1,
                        height: 1.5,
                        fontWeight: FontWeight.w400),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Terms', style: TextStyle(color: secondary1)),
                      TextSpan(text: ' and\n'),
                      TextSpan(
                          text: 'Conditions',
                          style: TextStyle(color: secondary1)),
                      TextSpan(text: ' and '),
                      TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(color: secondary1)),
                    ]),
              ),
              SizedBox(height: 57),
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
              SizedBox(height: 36),
              Container(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                      text: 'Already have an account? ',
                      style: TextStyle(
                          fontSize: 14,
                          color: primary1,
                          height: 1.5,
                          fontWeight: FontWeight.w400),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Login',
                            style: TextStyle(color: secondary1),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()),
                                    (route) => false);
                              }),
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
