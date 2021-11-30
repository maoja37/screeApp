import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:scree/constants.dart';
import 'package:intl/intl.dart';

class AddCollectionScreen extends StatelessWidget {
  final value = new NumberFormat("#,##0", "en_US");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 83,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(CupertinoIcons.arrow_left, size: 22),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  Icon(IconlyLight.search, size: 24),
                ],
              ),
              SizedBox(
                height: 42,
              ),
              Row(
                children: [
                  CircleAvatar(
                      backgroundColor: primary2,
                      radius: 20,
                      child: Center(
                          child: Text(
                        '+',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ))),
                  SizedBox(width: 12),
                  Text(
                    'New Product',
                    style: Body.copyWith(
                      color: Color(0xff121212),
                    ),
                  )
                ],
              ),
              SizedBox(height: 37),
              Wrap(
                  runSpacing: 24,
                  children: [0, 1, 2, 3, 4, 5, 6, 7]
                      .map(
                        (index) => ListTile(
                          contentPadding: EdgeInsets.only(left: 0),
                          leading: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xffC4C4C4)),
                          ),
                          title: Text(things[index]['Product'], style: Small),
                          subtitle: Text(
                            '${things[index]['number']}',
                            style: Tiny.copyWith(color: Color(0xff929292)),
                          ),
                          trailing: Text(
                            'N ${value.format(things[index]['Price'])}',
                            style: SmallBold,
                          ),
                        ),
                      )
                      .toList())
            ],
          ),
        ),
      ),
    );
  }

  List<Map<String, dynamic>> things = [
    {
      'Product': 'Logitech MX Keys',
      'number': 200,
      'Price': 44000,
    },
    {
      'Product': 'Logitech Ergo Keyboard',
      'number': 120,
      'Price': 24000,
    },
    {
      'Product': 'Logitech Ergo Chair',
      'number': 100,
      'Price': 24000,
    },
    {
      'Product': 'Logitech Ergo Mouse',
      'number': 100,
      'Price': 24000,
    },
    {
      'Product': 'Logitech MX Keys',
      'number': 200,
      'Price': 44000,
    },
    {
      'Product': 'Logitech Ergo Keyboard',
      'number': 120,
      'Price': 24000,
    },
    {
      'Product': 'Logitech Ergo Chair',
      'number': 100,
      'Price': 24000,
    },
    {
      'Product': 'Logitech Ergo Mouse',
      'number': 100,
      'Price': 24000,
    }
  ];
}
