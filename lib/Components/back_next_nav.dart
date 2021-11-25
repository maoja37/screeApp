
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scree/constants.dart';


class BackNextNav extends StatelessWidget {
  var route;

  BackNextNav(this.route);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Container(
          height: 120,
          width: double.infinity,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(CupertinoIcons.arrow_left, color: primary2),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Back',
                    style: SmallBold.copyWith(color: primary2),
                  )
                ],
              ),
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
              color: primary1,
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => route ));
              },
              child: Row(
                children: [
                  Text(
                    'Next',
                    style: SmallBold.copyWith(color: Colors.white),
                  ),
                  SizedBox(
                    width: 46,
                  ),
                  Icon(CupertinoIcons.arrow_right, color: Colors.white),
                ],
              ),
            )
          ]),
        ),
      );
  }
}