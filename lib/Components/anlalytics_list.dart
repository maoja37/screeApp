import 'package:flutter/material.dart';
import 'package:scree/constants.dart';

class AnalyticsList extends StatelessWidget {
  final int selected;
  final Function callback;
  final List<String> category;
  AnalyticsList(this.selected, this.callback, this.category);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      padding: EdgeInsets.symmetric(vertical: 30),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => callback(index),
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                  color: index == selected ? primary2 : Color(0xffEEEEEE),
                  borderRadius: BorderRadius.circular(100)),
              child: Text(
                category[index],
                style: Small.copyWith(
                  color: index == selected ? Colors.white 
                  : Color(0xff929292),
                ),
              )),
        ),
        separatorBuilder: (_, int) => SizedBox(
          width: 22,
        ),
        itemCount: category.length,
      ),
    );
  }
}
