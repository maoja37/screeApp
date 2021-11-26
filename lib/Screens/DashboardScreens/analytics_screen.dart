import 'package:flutter/material.dart';
import 'package:scree/Components/anlalytics_list.dart';
import 'package:scree/constants.dart';

class AnalyticsScreen extends StatefulWidget {
  const AnalyticsScreen({Key? key}) : super(key: key);

  @override
  _AnalyticsScreenState createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<AnalyticsScreen> {
  var selected = 0;
  final pageController = PageController();

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
              Container(
                height: 500,
                child: PageView(
                  controller: pageController,
                  onPageChanged: (index) => (int index) {
                    setState(() {
                      selected = index;
                    });
                  },
                  children: [
                    Container(
                      child: Text('one'),
                    ),
                    Container(
                      child: Text('stuff'),
                    ),
                    Container(child: Text('data'))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
