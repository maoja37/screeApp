import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:scree/Components/back_next_nav.dart';
import 'package:scree/constants.dart';

class SiteLikeScreen extends StatefulWidget {
  const SiteLikeScreen({Key? key}) : super(key: key);

  @override
  _SiteLikeScreenState createState() => _SiteLikeScreenState();
}

class _SiteLikeScreenState extends State<SiteLikeScreen> {
  List<String> tappedItems2 = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BackNextNav(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
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
                  'What type of store would you \nlike?',
                  style: Header5.copyWith(color: primary1),
                ),
                SizedBox(
                  height: 42,
                ),
                TextFormField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Search store type',
                  hintStyle: Small.copyWith(color: Color(0xff525252)),
                  suffixIcon: Icon(CupertinoIcons.search),
                )),
                SizedBox(
                  height: 30,
                ),
                Text('Suggestions',
                    style: Small.copyWith(color: Color(0xff929292))),
                SizedBox(
                  height: 12,
                ),
                Wrap(
                  spacing: 16,
                  runSpacing: 16,
                  children: _stuff2
                      .map(
                        (strings) => GestureDetector(
                          onTap: () {
                            setState(() {
                              tappedItems2.contains(strings)
                                  ? tappedItems2.remove(strings)
                                  : tappedItems2.add(strings);
                            });
                          },
                          child: AnimatedContainer(
                            padding: EdgeInsets.symmetric(
                                horizontal: 24, vertical: 10),
                            duration: Duration(milliseconds: 200),
                            decoration: BoxDecoration(
                                color: tappedItems2.contains(strings)
                                    ? primary1
                                    : Colors.transparent,
                                border: Border.all(color: Colors.black54),
                                borderRadius: BorderRadius.circular(100)),
                            child: Text(
                              strings,
                              style: Small.copyWith(
                                  fontSize: 14,
                                  color: tappedItems2.contains(strings)
                                      ? Colors.white
                                      : Color(0xff929292)),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<String> _stuff2 = [
    'Portfolio',
    'Art',
    'Marketing',
    'Education',
    'Blog',
    'Travel',
    'Online Store',
  ];
}
