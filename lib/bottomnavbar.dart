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
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.people, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.attach_money, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.account_box, color: Colors.white),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
