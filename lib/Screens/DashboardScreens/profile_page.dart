import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:scree/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: 24,
          right: 24,
          top: 64,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.arrow_left,
                  ),
                ),
                SizedBox(width: 37),
                Text('Profile', style: Header5.copyWith(color: primary2))
              ],
            ),
            SizedBox(
              height: 37,
            ),
            Container(
                alignment: Alignment.center,
                child: Column(children: [
                  CircleAvatar(
                    radius: 50,
                    child: Image.asset('assets/images/profile_picture.png'),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Akinbiola Michael',
                    style: BodyBold,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text('akinbiolamichael@gmail.com', style: Small),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Edit Profile',
                    style: BodyBold.copyWith(color: primary3),
                  ),
                  SizedBox(
                    height: 33,
                  ),
                ])),
            Container(
              height: 64,
              width: double.infinity,
              decoration: BoxDecoration(color: Color(0xffF7F8FD)),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                'My Sites',
                style: Body.copyWith(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 64,
              width: double.infinity,
              decoration: BoxDecoration(color: Color(0xffF7F8FD)),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                'Statistics',
                style: Body.copyWith(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 64,
              width: double.infinity,
              decoration: BoxDecoration(color: Color(0xffF7F8FD)),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                'Statistics',
                style: Body.copyWith(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 121,
            ),
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(IconlyLight.logout, size: 24, color: secondary1,),
                  SizedBox(width: 12),
                  Text('Logout', style: Small.copyWith(color: primary1))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
