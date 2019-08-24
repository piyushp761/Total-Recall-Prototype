import 'package:total_recall/Profile/profile.dart';
import 'package:total_recall/app.dart';
import 'Coupons/coupons.dart';
import 'Team/team.dart';
import 'style.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int _active;
  final double _height;

  BottomNavBar(this._active, this._height);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height,
      child: BottomAppBar(
        color: ColorDarkBG,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.pie_chart, color: Colors.white),
              onPressed: () {
                Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new TotalRecall()));
              },
            ),
            IconButton(
              icon: Icon(Icons.people, color: Colors.white),
              onPressed: () {
                 Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new Team()));
              },
            ),
            IconButton(
              icon: Icon(Icons.attach_money, color: Colors.white),
              onPressed: () {
                 Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new Coupons()));
              },
            ),
            IconButton(
              icon: Icon(Icons.account_box, color: Colors.white),
              onPressed: () {
                 Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new Profile()));
              },
            )
          ],
        ),
      ),
    );
  }
}
