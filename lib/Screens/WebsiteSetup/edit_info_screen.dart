import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:scree/Components/add_photo.dart';
import 'package:scree/Components/back_next_nav.dart';

import 'package:scree/Screens/WebsiteSetup/website_template.dart';
import 'package:scree/constants.dart';

class EditInfoScreen extends StatefulWidget {
  const EditInfoScreen({Key? key}) : super(key: key);

  @override
  _EditInfoScreenState createState() => _EditInfoScreenState();
}

class _EditInfoScreenState extends State<EditInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BackNextNav(WebsiteTemplateScreen()),
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
                'Review and edit info',
                style: Header5.copyWith(color: primary1),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                alignment: Alignment.center,
                child: AddPhoto(),
              ),
              SizedBox(height: 32),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  labelText: 'Store name',
                ),
              ),
              SizedBox(
                height: 45,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  labelText: 'Email Address',

                ),
              ),
              SizedBox(height: 24,),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  labelText: 'Phone Number',
                  prefixText: '+234  '
                ),
                
              ),
              SizedBox(height: 24,),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  labelText: 'Address',
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
