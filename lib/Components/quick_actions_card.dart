import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scree/constants.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    width: double.infinity,
                    height: 187,
                    padding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 19,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Quick actions',
                                style: BodyBold.copyWith(color: Colors.black)),
                            SvgPicture.asset('assets/images/list_ul.svg')
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 96,
                              width: 88,
                              decoration: BoxDecoration(
                                color: Color(0xffF7F8FD),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 12,
                                    right: 12,
                                    child: CircleAvatar(
                                        radius: 16,
                                        backgroundColor: primary3,
                                        child: SvgPicture.asset(
                                            'assets/images/bag-plus.svg')),
                                  ),
                                  Positioned(
                                      bottom: 12,
                                      left: 12,
                                      child: Text(
                                        'Add\nproduct',
                                        textAlign: TextAlign.left,
                                        style: Small,
                                      )),
                                ],
                              ),
                            ),
                            Container(
                              height: 96,
                              width: 88,
                              decoration: BoxDecoration(
                                color: Color(0xffF7F8FD),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 12,
                                    right: 12,
                                    child: CircleAvatar(
                                        radius: 16,
                                        backgroundColor: primary3,
                                        child: SvgPicture.asset(
                                            'assets/images/box-arrow-up-right.svg')),
                                  ),
                                  Positioned(
                                      bottom: 12,
                                      left: 12,
                                      child: Text(
                                        'Share\nproduct',
                                        textAlign: TextAlign.left,
                                        style: Small,
                                      )),
                                ],
                              ),
                            ),
                            Container(
                              height: 96,
                              width: 88,
                              decoration: BoxDecoration(
                                color: Color(0xffF7F8FD),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 12,
                                    right: 12,
                                    child: CircleAvatar(
                                        radius: 16,
                                        backgroundColor: primary3,
                                        child: SvgPicture.asset(
                                            'assets/images/cart-plus.svg')),
                                  ),
                                  Positioned(
                                      bottom: 12,
                                      left: 12,
                                      child: Text(
                                        'New\nOrders',
                                        textAlign: TextAlign.left,
                                        style: Small,
                                      )),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
  }
}