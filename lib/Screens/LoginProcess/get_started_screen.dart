import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scree/Screens/LoginProcess/sign_in_screnn.dart';
import 'package:scree/constants.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    double heightSize = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: widthSize * 0.06, top: heightSize * 0.081),
            child: Text(
              'scree',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 32, fontWeight: FontWeight.w600, color: primary2),
              ),
            ),
          ),
          SizedBox(
            height: heightSize * 0.06635,
          ),
          Container(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27),
              child: Column(
                children: [
                  Text(
                    'Welcome! Let\'s get \nyou started',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 34,
                        color: primary2,
                        fontWeight: FontWeight.w700,
                        height: 1.5),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    'Create a scree account to continue',
                    style: TextStyle(
                      color: Color(0xff303030),
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  MaterialButton(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 51),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/google1.png',
                          height: 26,
                          width: 26,
                        ),
                        Text(
                          'Sign in with Google',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: primary1),
                        ),
                        SizedBox(
                          width: 32,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  MaterialButton(
                    color: Color(0xff254792),
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 48),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/facebook.png',
                          height: 32,
                          width: 32,
                        ),
                        Text(
                          'Sign in with Facebook',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 32,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 42),
                  MaterialButton(
                   shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100)),
                          color: primary1,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  SignInScreen()));
                  },
                  padding: EdgeInsets.symmetric(vertical: 18),
                  minWidth: double.infinity,
                  child: Text(
                    'Sign up with Email',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
