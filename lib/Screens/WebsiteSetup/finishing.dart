import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:scree/Screens/DashboardScreens/bottom_nav_screen.dart';
import 'package:scree/constants.dart';
import '';

class Finishing extends StatefulWidget {
  const Finishing({Key? key}) : super(key: key);

  @override
  _FinishingState createState() => _FinishingState();
}

class _FinishingState extends State<Finishing> {
  @override
  void initState() {
    // TODO: implement initState
    _navigateToDashboard();

    super.initState();
  }

  _navigateToDashboard() async {
    await Future.delayed(Duration(milliseconds: 6000), () {});
    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => BottomNavBarScreen()), (route) => false);
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 95),
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Finishing',
              style: Header5.copyWith(color: primary2),
            ),
            SizedBox(
              height: 24,
            ),
            FAProgressBar(
              currentValue: 100,
              animatedDuration: Duration(seconds: 4),
              size: 12,
              progressColor: secondary1,
            ),
          ],
        )),
      ),
    );
  }
}
