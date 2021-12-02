import 'package:flutter/material.dart';
import 'package:scree/constants.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class MySiteCard extends StatelessWidget {
  const MySiteCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    width: double.infinity,
                    height: 170,
                    padding: EdgeInsets.only(
                        left: 12, right: 12, top: 16, bottom: 25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('My site',
                                style: BodyBold.copyWith(color: Colors.black)),
                            Container(
                              width: 147,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 64,
                                    height: 32,
                                    decoration: BoxDecoration(
                                        color: Color(0xffF7F8FD),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: Center(
                                      child: Text('View',
                                          style:
                                              Small.copyWith(color: primary3)),
                                    ),
                                  ),
                                  Container(
                                    width: 64,
                                    height: 32,
                                    decoration: BoxDecoration(
                                        color: primary2,
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: Center(
                                      child: Text('Edit',
                                          style: Small.copyWith(
                                              color: Colors.white)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 76,
                              width: 76,
                              child: SfRadialGauge(
                                axes: <RadialAxis>[
                                  RadialAxis(
                                      showLabels: false,
                                      showTicks: false,
                                      startAngle: 270,
                                      endAngle: 270,
                                      minimum: 0,
                                      maximum: 100,
                                      radiusFactor: 1,
                                      axisLineStyle: AxisLineStyle(
                                          thicknessUnit: GaugeSizeUnit.factor,
                                          thickness: 0.2),
                                      annotations: <GaugeAnnotation>[
                                        GaugeAnnotation(
                                          angle: 180,
                                          widget: Row(
                                            children: [
                                              SizedBox(width: 18),
                                              Text(
                                                'Site\nvisits',
                                                textAlign: TextAlign.center,
                                                style: Small,
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                      pointers: const <GaugePointer>[
                                        RangePointer(
                                            value: 40,
                                            enableAnimation: true,
                                            animationDuration: 3200,
                                            animationType: AnimationType.ease,
                                            sizeUnit: GaugeSizeUnit.factor,
                                            color: Color(0xffFA5020),
                                            width: 0.2),
                                      ]),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 13,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Magic in little things',
                                  style: BodyBold,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text('https://magicinlittlethings.scree.com', style: Tiny.copyWith(color: Color(0xff525252)),)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  );
  }
}