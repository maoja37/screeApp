// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';
import 'package:scree/Components/my_site_card.dart';
import 'package:scree/Components/quick_actions_card.dart';
import 'package:scree/constants.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import 'package:flutter/services.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        backgroundColor: primary1,
        titleSpacing: 24,
        actions: [
          Icon(CupertinoIcons.bell, size: 32),
          SizedBox(
            width: 24,
          ),
          CircleAvatar(
            radius: 24,
            // child: Image.asset('images/profile_picture.png'),
          ),
          SizedBox(
            width: 24,
          ),
        ],
        title: Row(
          children: [
            Text(
              'Magic in li..',
              style: Header5.copyWith(color: Colors.white),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              IconlyLight.arrow_down_2,
              size: 24,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(height: 126, color: primary1),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 56),
              child: Column(
                children: [
                  QuickActions(),
                  SizedBox(
                    height: 20,
                  ),
                  MySiteCard()

                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
