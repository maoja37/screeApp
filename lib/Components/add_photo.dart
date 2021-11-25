import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddPhoto extends StatelessWidget {
  const AddPhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 82,
      child: Stack(children: [
        CircleAvatar(
          minRadius: 40,
          backgroundColor: Color(0xffE4ECF7),
          child: Icon(
            Icons.image,
            color: Color(0xffB0C8E8),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            height: 24,
            width: 24,
            decoration: BoxDecoration(
              color: Color(0xff4252C7),
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: Center(child: Icon(CupertinoIcons.add, color: Colors.white, size: 12,)),
          ),
        ),
      ]),
    );
  }
}
