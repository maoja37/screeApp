import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:scree/Screens/DashboardScreens/add_collections.dart';
import 'package:scree/constants.dart';

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
                Text(
                  'Collections',
                  style: Header5,
                ),
                Icon(IconlyLight.search, size: 24),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            GestureDetector(
              onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> AddCollectionScreen() ));
              },
              child: Row(
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
                    'New Collection',
                    style: Body.copyWith(
                      color: Color(0xff121212),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Wrap(
                runSpacing: 24,
                children: [0, 1, 2, 3]
                    .map(
                      (index) => ListTile(
                      contentPadding: EdgeInsets.only(left: 0),
                        leading: ClipRRect(
                            borderRadius: BorderRadius.circular(9),
                            child: Image.asset(orders2[index]['imageUrl'],
                                width: 40, height: 40)),
                        title: Text(orders2[index]['product'], style: Small),
                        
                      ),
                    )
                    .toList())
          ],
        ),
      ),
    );
  }

  List<Map<String, dynamic>> orders2 = [
    {
      'product': 'Lagos',
      'imageUrl': 'assets/images/product.png',
    },
    {
      'product': 'Abuja',
      'imageUrl': 'assets/images/product.png',
    },
    {
      'product': 'Rivers',
      'imageUrl': 'assets/images/product.png',
    },
    {
      'product': 'Ibadan',
      'imageUrl': 'assets/images/product.png',
    }
  ];
}
