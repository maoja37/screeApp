import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:scree/Screens/DashboardScreens/analytics_screen.dart';
import 'package:scree/Screens/DashboardScreens/manage_screen.dart';
import 'package:scree/Screens/DashboardScreens/product_screen.dart';


class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({Key? key}) : super(key: key);

  @override
  _BottomNavBarScreenState createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  final List _screens = [
    Scaffold(
      body: Center(
        child: Text('A'),
      ),
    ),
    AnalyticsScreen(),
    ProductScreen(),
    ManageScreen()
  ];
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: _screens[currentIndex],
      bottomNavigationBar: Container(
        height: size.width * .155,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [0, 1, 2, 3]
              .map(
                (index) => InkWell(
                  onTap: () {
                    setState(
                      () {
                        currentIndex = index;
                      },
                    );
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AnimatedContainer(
                        duration: Duration(milliseconds: 1500),
                        curve: Curves.fastLinearToSlowEaseIn,
                        margin: EdgeInsets.only(
                          bottom: index == currentIndex ? 0 : size.width * .029,
                          right: size.width * .0422,
                          left: size.width * .0422,
                        ),
                        width: size.width * .128,
                        height: index == currentIndex ? 4 : 0,
                        decoration: BoxDecoration(
                          color: Color(0xff25307e),
                        ),
                      ),
                      Icon(
                        index == currentIndex
                            ? listOfIconsBold[index]
                            : listOfIconsLight[index],
                        size: size.width * .076,
                        color: index == currentIndex
                            ? Color(0xff25307e)
                            : Colors.black38,
                      ),
                      Text(
                        listOfText[index],
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: index == currentIndex
                              ? Color(0xff25307e)
                              : Colors.black38,
                        ),
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }

  List<IconData> listOfIconsLight = [
    IconlyLight.category,
    IconlyLight.chart,
    IconlyLight.document,
    IconlyLight.work
  ];
  List<IconData> listOfIconsBold = [
    IconlyBold.category,
    IconlyBold.chart,
    IconlyBold.document,
    IconlyBold.work
  ];

  List<String> listOfText = ['DashBoard', 'Analytics', 'My Products', 'Manage'];
}
