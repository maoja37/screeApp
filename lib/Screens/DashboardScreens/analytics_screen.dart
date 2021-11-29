import 'package:flutter/material.dart';
import 'package:scree/Components/anlalytics_list.dart';
import 'package:scree/Models/salesData.dart';
import 'package:scree/constants.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';



class AnalyticsScreen extends StatefulWidget {
  const AnalyticsScreen({Key? key}) : super(key: key);

  @override
  _AnalyticsScreenState createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<AnalyticsScreen> {
  var selected = 0;
  final pageController = PageController();
  final value = new NumberFormat("#,##0", "en_US");

  late List<SalesData> _salesData;
  late List<SalesData> _salesData2;
  late List<SalesData> _salesData3;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    // TODO: implement initState
    _salesData = getChartData();
    _salesData2 = getChartData2();
    _salesData3 = getChartData3();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  List<String> category = ['On sale', 'Orders', 'Sales'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
              ),
              Text(
                'Analytics',
                style: Header5.copyWith(
                  color: Color(0xff121212),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              AnalyticsList(selected, (int index) {
                setState(() {
                  selected = index;
                });
                pageController.jumpToPage(index);
              }, category),
              LimitedBox(
                maxHeight: 700,
                child: PageView(
                  physics: NeverScrollableScrollPhysics(),
                  controller: pageController,
                  onPageChanged: (index) => (int index) {
                    setState(() {
                      selected = index;
                    });
                  },
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 342,
                          height: 205,
                          child: SfCartesianChart(
                            tooltipBehavior: _tooltipBehavior,
                            series: <ChartSeries>[
                              ColumnSeries<SalesData, String>(
                                color: Color(0xff66cb9f),
                                dataSource: _salesData,
                                xValueMapper: (SalesData sales, _) =>
                                    sales.daysOfWeek,
                                yValueMapper: (SalesData sales, _) =>
                                    sales.sale,
                                width: 0.45,
                                spacing: 0.3,
                                animationDuration: 3000,
                                enableTooltip: true,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2)),
                              ),
                            ],
                            primaryXAxis: CategoryAxis(),
                            primaryYAxis: NumericAxis(
                              edgeLabelPlacement: EdgeLabelPlacement.shift,
                              numberFormat:
                                  NumberFormat.simpleCurrency(decimalDigits: 0),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          'Geolocation',
                          style: Small.copyWith(
                            color: Color(0xff525252),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Wrap(
                            runSpacing: 24,
                            children: [0, 1, 2, 3]
                                .map(
                                  (index) => ListTile(
                                    leading: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: Color(0xffFFF7F5)),
                                      child: Center(
                                        child: Icon(
                                          Icons.location_on,
                                          color: Color(0xffFA5020),
                                        ),
                                      ),
                                    ),
                                    title: Text(geolocations[index]['location'],
                                        style: Small.copyWith(
                                            color: Color(0xff525252))),
                                    trailing: Text(
                                      '${geolocations[index]['number']}',
                                      style: Small.copyWith(
                                          color: Color(0xff121212)),
                                    ),
                                  ),
                                )
                                .toList())
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 342,
                          height: 205,
                          child: SfCartesianChart(
                            tooltipBehavior: _tooltipBehavior,
                            series: <ChartSeries>[
                              ColumnSeries<SalesData, String>(
                                color: Color(0xff66cb9f),
                                dataSource: _salesData2,
                                xValueMapper: (SalesData sales, _) =>
                                    sales.daysOfWeek,
                                yValueMapper: (SalesData sales, _) =>
                                    sales.sale,
                                width: 0.45,
                                spacing: 0.3,
                                animationDuration: 3000,
                                enableTooltip: true,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2)),
                              ),
                            ],
                            primaryXAxis: CategoryAxis(),
                            primaryYAxis: NumericAxis(
                              edgeLabelPlacement: EdgeLabelPlacement.shift,
                              numberFormat:
                                  NumberFormat.simpleCurrency(decimalDigits: 0),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          'Orders',
                          style: Small.copyWith(
                            color: Color(0xff525252),
                          ),
                        ),
                        SizedBox(height: 20),
                        Wrap(
                            runSpacing: 24,
                            children: [0, 1, 2, 3]
                                .map(
                                  (index) => ListTile(
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
                                        subtitle: Text('${orders[index]['number']}', style: Tiny.copyWith(color: Color(0xff929292)),),
                                    trailing: Text(
                                        'N ${value.format(orders[index]['Price']) }', style: SmallBold,),
                                  ),
                                )
                                .toList())
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 342,
                          height: 205,
                          child: SfCartesianChart(
                            tooltipBehavior: _tooltipBehavior,
                            series: <ChartSeries>[
                              ColumnSeries<SalesData, String>(
                                color: Color(0xff66cb9f),
                                dataSource: _salesData3,
                                xValueMapper: (SalesData sales, _) =>
                                    sales.daysOfWeek,
                                yValueMapper: (SalesData sales, _) =>
                                    sales.sale,
                                width: 0.45,
                                spacing: 0.3,
                                animationDuration: 3000,
                                enableTooltip: true,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2)),
                              ),
                            ],
                            primaryXAxis: CategoryAxis(),
                            primaryYAxis: NumericAxis(
                              edgeLabelPlacement: EdgeLabelPlacement.shift,
                              numberFormat:
                                  NumberFormat.simpleCurrency(decimalDigits: 0),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          'Recent Sales',
                          style: Small.copyWith(
                            color: Color(0xff525252),
                          ),
                         
                        ),
                         SizedBox(height: 20,),
                         Wrap(
                            runSpacing: 24,
                            children: [0, 1, 2, 3]
                                .map(
                                  (index) => ListTile(
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
                                        subtitle: Text('${orders[index]['number']}', style: Tiny.copyWith(color: Color(0xff929292)),),
                                    trailing: Text(
                                        'N ${value.format(orders[index]['Price']) }', style: SmallBold,),
                                  ),
                                )
                                .toList())
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  List<Map<String, dynamic>> geolocations = [
    {
      'location': 'Lagos',
      'number': 1000,
    },
    {
      'location': 'Abuja',
      'number': 720,
    },
    {
      'location': 'Rivers',
      'number': 500,
    },
    {
      'location': 'Ibadan',
      'number': 200,
    }
  ];

   List<Map<String, dynamic>> orders = [
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

  List<Map<String, dynamic>> sales = [
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

  List<SalesData> getChartData() {
    final List<SalesData> chartData = [
      SalesData('Mon', 1700),
      SalesData('Tue', 1200),
      SalesData('Wed', 750),
      SalesData('Thu', 1100),
      SalesData('Fri', 250),
    ];

    return chartData;
  }

  List<SalesData> getChartData2() {
    final List<SalesData> chartData = [
      SalesData('Mon', 1200),
      SalesData('Tue', 1700),
      SalesData('Wed', 750),
      SalesData('Thu', 1100),
      SalesData('Fri', 250),
    ];

    return chartData;
  }

  List<SalesData> getChartData3() {
    final List<SalesData> chartData = [
      SalesData('Mon', 800),
      SalesData('Tue', 1500),
      SalesData('Wed', 250),
      SalesData('Thu', 1100),
      SalesData('Fri', 1900),
    ];

    return chartData;
  }
}
