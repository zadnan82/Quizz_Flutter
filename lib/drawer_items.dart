import 'package:flutter/material.dart';
import 'package:quiz_app/categories.dart';
import 'package:quiz_app/favorites.dart';
import 'package:quiz_app/user_screen.dart'; 

class DrawerItems extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Padding(padding: EdgeInsets.only(bottom: 120),
            ),
            Container(alignment: Alignment.topLeft,
              child: GestureDetector(
                child: Row( children: [
                  Icon(Icons.person),
                  Padding(padding: EdgeInsets.only(right: 10),),
                  Text("Användare"),
                ],
                ) ,
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                    builder: (context) => UserScreen(),
                    ),
                    );
                },
                ),
                ), 

                 Padding(padding: EdgeInsets.only(bottom: 40),
            ),
            Container(alignment: Alignment.topLeft,
              child: GestureDetector(
                child: Row( children: [
                  Icon(Icons.star),
                  Padding(padding: EdgeInsets.only(right: 10),),
                  Text("Favorites"),
                ],
                ) ,
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                    builder: (context) => Favorites(),
                    ),
                    );
                },
                ),
                ),

                 Padding(padding: EdgeInsets.only(bottom: 40),
            ),
            Container(alignment: Alignment.topLeft,
              child: GestureDetector(
                child: Row( children: [
                  Icon(Icons.star),
                  Padding(padding: EdgeInsets.only(right: 10),),
                  Text("Categories"),
                ],
                ) ,
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                    builder: (context) => Categories(),
                    ),
                    );
                },
                ),
                ),

                  Padding(padding: EdgeInsets.only(bottom: 40),
            ),
            Container(alignment: Alignment.topLeft,
              child: GestureDetector(
                child: Row( children: [
                  Icon(Icons.star),
                  Padding(padding: EdgeInsets.only(right: 10),),
                  Text("Favorites"),
                ],
                ) ,
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                    builder: (context) => Favorites(),
                    ),
                    );
                },
                ),
                ),
          ],
        );
  }
}