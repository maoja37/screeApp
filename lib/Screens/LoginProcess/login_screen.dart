import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scree/Screens/LoginProcess/forgot_password_screen.dart';
import 'package:scree/Screens/LoginProcess/sign_in_screnn.dart';
import 'package:scree/Screens/LoginProcess/welcome_screen.dart';
import 'package:scree/constants.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              Text(
                'scree',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: primary2,
                  ),
                ),
              ),
              SizedBox(
                height: 65,
              ),
              Text(
                'Log in with email',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: primary2,
                ),
              ),
              SizedBox(height: 35),
              
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  labelText: 'Email Address/Username',
                  labelStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 40),
              TextFormField(
                keyboardType: TextInputType.number,
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
              GestureDetector(onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ForgetPasswordScreen() ));
              },  child: Text('Forgot Password?', style: TextStyle(color: secondary1, fontWeight: FontWeight.w400, fontSize: 16),)),
              SizedBox(height: 57),
              MaterialButton(
                 shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                        color: primary1,
                onPressed: () {
                   Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => WelcomeScreen())  , (route) => false);
                },
                padding: EdgeInsets.symmetric(vertical: 18),
                minWidth: double.infinity,
                child: Text(
                  'Continue',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ),

              SizedBox(height: 126),

              Container(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                      text: 'Don\'t have an account? ',
                      style: TextStyle(
                          fontSize: 14,
                          color: primary1,
                          height: 1.5,
                          fontWeight: FontWeight.w400),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Sign Up', style: TextStyle(color: secondary1), recognizer: TapGestureRecognizer()..onTap = (){ 
                               Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=> SignInScreen()),(route) => false) ;
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
