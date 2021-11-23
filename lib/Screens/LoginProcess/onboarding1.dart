import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scree/Screens/LoginProcess/get_started_screen.dart';
import 'package:scree/constants.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);

  final int _numPages = 3;

  var _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    double heightSize = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 37),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: heightSize * 0.211,
            ),
            Container(
              height: 500,
              child: PageView(
                  physics: ClampingScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/carousel1.png',
                          width: 256,
                          height: 268,
                        ),
                        SizedBox(
                          height: heightSize * 0.0781,
                        ),
                        Text(
                          'Create and manage your\nown webiste',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24,
                              color: primary2,
                              fontWeight: FontWeight.w800,
                              height: 1.5),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Get all the powerful tools you need to\ncustomize, publish and manage your\nwebsite, store, blog or community',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff525252),
                              fontWeight: FontWeight.w400,
                              height: 1.5),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/carousel2.png',
                          width: 256,
                          height: 268,
                        ),
                        SizedBox(
                          height: heightSize * 0.0781,
                        ),
                        Text(
                          'Create and manage your\nown webiste',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24,
                              color: primary2,
                              fontWeight: FontWeight.w800,
                              height: 1.5),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Get all the powerful tools you need to\ncustomize, publish and manage your\nwebsite, store, blog or community',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff525252),
                              fontWeight: FontWeight.w400,
                              height: 1.5),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/carousel3.png',
                          width: 256,
                          height: 268,
                        ),
                        SizedBox(
                          height: heightSize * 0.0781,
                        ),
                        Text(
                          'Create and manage your\nown webiste',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24,
                              color: primary2,
                              fontWeight: FontWeight.w800,
                              height: 1.5),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Get all the powerful tools you need to\ncustomize, publish and manage your\nwebsite, store, blog or community',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff525252),
                              fontWeight: FontWeight.w400,
                              height: 1.5),
                        ),
                      ],
                    )
                  ]),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: FractionalOffset.bottomRight,
              child: GestureDetector(
                onTap: (){ _currentPage != _numPages - 1 ?
                  _pageController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.linear) : Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=> GetStartedScreen()),(route) => false) ;
                },
                child: AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    width: _currentPage != _numPages - 1 ? 100 : 150,
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(120),
                      color: primary1,
                    ),
                    child: Center(
                      child: _currentPage != _numPages - 1
                          ? Icon(Icons.arrow_right_alt_outlined, color: Colors.white,size: 44,)
                          : Text(
                              'Get Started',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
