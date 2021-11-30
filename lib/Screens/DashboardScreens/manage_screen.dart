import 'package:flutter/material.dart';
import 'package:scree/Screens/DashboardScreens/profile_page.dart';
import 'package:scree/constants.dart';

class ManageScreen extends StatelessWidget {
  const ManageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 24,right: 24, top: 56),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Manage',
              style: Header5,
            ),
            SizedBox(
              height: 25,
            ),
            MaterialButton(
              
              color: Color(0xff25307E),
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ProfileScreen()));
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 32,
                    child: Image.asset('assets/images/profile_picture.png'),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Akinbiola Michael',
                        style: BodyBold.copyWith(color: Colors.white),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'akinbiolamichael@gmail.com',
                        style: Small.copyWith(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              height: 64,
              width: double.infinity,
              decoration: BoxDecoration(color: Color(0xffF7F8FD)),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                'Notification Settings',
                style: Body.copyWith(color: Colors.black),
              ),
            ),
            SizedBox(height: 16,),
            Container(
              height: 64,
              width: double.infinity,
              decoration: BoxDecoration(color: Color(0xffF7F8FD)),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                'Online Posts',
                style: Body.copyWith(color: Colors.black),
              ),
            ),
            SizedBox(height: 16,),
            Container(
              height: 64,
              width: double.infinity,
              decoration: BoxDecoration(color: Color(0xffF7F8FD)),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                'Payment',
                style: Body.copyWith(color: Colors.black),
              ),
            ),
            SizedBox(height: 16,),
            Container(
              height: 64,
              width: double.infinity,
              decoration: BoxDecoration(color: Color(0xffF7F8FD)),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                'Connect Whatsapp',
                style: Body.copyWith(color: Colors.black),
              ),
            ),
            SizedBox(height: 16,),
            Container(
              height: 64,
              width: double.infinity,
              decoration: BoxDecoration(color: Color(0xffF7F8FD)),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                'Share app',
                style: Body.copyWith(color: Colors.black),
              ),
            ),
            SizedBox(height: 16,),
            Container(
              height: 64,
              width: double.infinity,
              decoration: BoxDecoration(color: Color(0xffF7F8FD)),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                'About the app',
                style: Body.copyWith(color: Colors.black),
              ),
            ),
            
            
          ],
        ),
      ),
    );
  }
}
