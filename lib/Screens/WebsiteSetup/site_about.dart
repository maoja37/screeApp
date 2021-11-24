import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:scree/Screens/WebsiteSetup/site_like.dart';
import 'package:scree/constants.dart';

class SiteAbooutScreen extends StatefulWidget {
  const SiteAbooutScreen({Key? key}) : super(key: key);

  @override
  _SiteAbooutScreenState createState() => _SiteAbooutScreenState();
}

class _SiteAbooutScreenState extends State<SiteAbooutScreen> {
  bool _isTapped = false;
   List<String> tappedItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 24, right: 24, top: 74.75),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(CupertinoIcons.arrow_left, color: Colors.black),
              SizedBox(
                height: 42,
              ),
              Text(
                'What is your site about',
                style: Header5.copyWith(color: primary1),
              ),
              SizedBox(
                height: 11,
              ),
              Text(
                'This will help us suggest ideas best suited for your\nneeds.',
                style: Small.copyWith(
                  color: Color(0xff303030),
                ),
              ),
              SizedBox(
                height: 42,
              ),
              TextFormField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: 'Find category..',
                hintStyle: Small.copyWith(color: Color(0xff525252)),
                suffixIcon: Icon(CupertinoIcons.search),
              )),
              SizedBox(
                height: 40,
              ),
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: _stuff
                    .map(
                      (strings) => GestureDetector(
                        onTap: () {
                          setState(()  {
                            tappedItems.contains(strings)? tappedItems.remove(strings) : tappedItems.add(strings);

                             Future.delayed(Duration(milliseconds: 2000), (){ Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SiteLikeScreen() ));});

    
                            
                          });
                        },
                        child: AnimatedContainer(
                          padding:
                              EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                          duration: Duration(milliseconds: 200),
                          decoration: BoxDecoration(
                              color: tappedItems.contains(strings) ? primary1 : Colors.transparent,
                              border: Border.all(color: Colors.black54),
                              borderRadius: BorderRadius.circular(100)),
                          child: Text(
                            strings,
                            style: Small.copyWith(
                                fontSize: 14,
                                color:
                                   tappedItems.contains(strings) ? Colors.white : Color(0xff929292)),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              )
            ],
          ),
        ),
      ),
    );
  }

  List<String> _stuff = [
    'Portfolio',
    'Art',
    'Marketing',
    'Education',
    'Blog',
    'Travel',
    'Fashion',
    'Beauty',
    'Design',
    'Online Store',
    'Fitness',
    'Food'
  ];
}
