import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter/widgets.dart';

import 'package:scree/Components/back_next_nav.dart';
import 'package:scree/Screens/WebsiteSetup/finishing.dart';
import 'package:scree/Screens/WebsiteSetup/site_about.dart';
import 'package:scree/constants.dart';

class WebsiteTemplateScreen extends StatefulWidget {
  const WebsiteTemplateScreen({Key? key}) : super(key: key);

  @override
  _WebsiteTemplateScreenState createState() => _WebsiteTemplateScreenState();
}

class _WebsiteTemplateScreenState extends State<WebsiteTemplateScreen> {
  List<String> _imageUrls = [
    'assets/images/template1.png',
    'assets/images/template2.png'
  ];
  List<String> _isChecked = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BackNextNav(Finishing()),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: 72.75,
              ),
              Icon(CupertinoIcons.arrow_left, color: Colors.black),
              SizedBox(
                height: 42,
              ),
              Text(
                'Pick a website template',
                style: Header5.copyWith(color: primary1),
              ),
              SizedBox(
                height: 40,
              ),
              Wrap(
                runSpacing: 10,
                children: _imageUrls
                    .map((imageUrl) => GestureDetector(
                      onTap: (){
                        setState(() {
                              !_isChecked.contains(imageUrl) && _isChecked.length < 1
                                  ?  _isChecked.add(imageUrl)  
                                  :  _isChecked.remove(imageUrl);
                            });
                      },
                      child: AnimatedContainer(
                            width: double.infinity,
                            height: 342,
                            duration: Duration(milliseconds: 300),
                            child: Stack(
                              children: [
                                Image.asset(
                                  imageUrl,
                                  fit: BoxFit.fill,
                                ),
                                 if(_isChecked.contains(imageUrl))
                                 Positioned(
                                  right: 16,
                                  bottom: 50,
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: primary3,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.white, width: 2),
                                    ),
                                    child: Center(
                                        child: Icon(
                                      CupertinoIcons.checkmark,
                                      color: Colors.white,
                                      size: 16,
                                    )),
                                  ),
                                ) 
                              ],
                            ),
                          ),
                    ))
                    .toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
