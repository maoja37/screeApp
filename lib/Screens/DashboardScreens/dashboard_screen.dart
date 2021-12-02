// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';
import 'package:scree/Components/my_site_card.dart';
import 'package:scree/Components/quick_actions_card.dart';
import 'package:scree/constants.dart';

import 'package:intl/intl.dart';

import 'package:flutter/services.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  final value = new NumberFormat("#,##0", "en_US");

  List<Map<String, dynamic>> orders = [
    {
      'Product': 'Ozenua Oluwatobi ',
      'number': 'Logitech MX keys',
      'Price': 44000,
    },
    {
      'Product': 'Ozenua Oluwatobi ',
      'number': 'Logitech Ergo keyboard',
      'Price': 24000,
    },
  ];

  List<Map<String, dynamic>> products = [
    {
      'Product': 'Logitech MX keys ',
      'number': 'by Logi',
      'Price': 44000,
    },
    {
      'Product': 'Logitech Ergo keyboard',
      'number': 'by logi',
      'Price': 24000,
    },
    {
      'Product': 'Logitech Keyboard ',
      'number': 'by Logi',
      'Price': 44000,
    },
    
  
  ];
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: primary1,
        titleSpacing: 24,
        actions: [
          Icon(CupertinoIcons.bell, size: 32),
          SizedBox(
            width: 24,
          ),
          CircleAvatar(
            radius: 24,
             child: Image.asset('assets/images/profile_picture.png'),
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
                  MySiteCard(),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                    width: double.infinity,
                    height: 220,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Orders',
                                style: BodyBold.copyWith(color: Colors.black)),
                            Text(
                              'Manage orders',
                              style: Small.copyWith(color: primary3),
                            ),
                          ],
                        ),
                        Wrap(
                            runSpacing: 1,
                            children: [0, 1]
                                .map(
                                  (index) => ListTile(
                                    contentPadding: EdgeInsets.only(left: 0),
                                    leading: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: Color(0xffC4C4C4)),
                                    ),
                                    title: Text(orders[index]['Product'],
                                        style: Small),
                                    subtitle: Text(
                                      '${orders[index]['number']}',
                                      style: Tiny.copyWith(
                                          color: Color(0xff929292)),
                                    ),
                                    trailing: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'N ${value.format(orders[index]['Price'])}',
                                          style: SmallBold,
                                        ),
                                        Text(
                                          'x1',
                                          style: Tiny.copyWith(
                                              color: Color(0xff929292)),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                                .toList()),
                                SizedBox(height: 8),
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            'See all',
                            style: Small.copyWith(color: primary3),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                    width: double.infinity,
                    height: 220,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Products',
                                style: BodyBold.copyWith(color: Colors.black)),
                            Text(
                              'Manage products',
                              style: Small.copyWith(color: primary3),
                            ),
                          ],
                        ),
                        Wrap(
                            runSpacing: 1,
                            children: [0, 1]
                                .map(
                                  (index) => ListTile(
                                    contentPadding: EdgeInsets.only(left: 0),
                                    leading: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: Color(0xffC4C4C4)),
                                    ),
                                    title: Text(products[index]['Product'],
                                        style: Small),
                                    subtitle: Text(
                                      '${products[index]['number']}',
                                      style: Tiny.copyWith(
                                          color: Color(0xff929292)),
                                    ),
                                    trailing: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'N ${value.format(orders[index]['Price'])}',
                                          style: SmallBold,
                                        ),
                                        Text(
                                          'x1',
                                          style: Tiny.copyWith(
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                                .toList()),
                                SizedBox(height: 8),
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            'See all',
                            style: Small.copyWith(color: primary3),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
