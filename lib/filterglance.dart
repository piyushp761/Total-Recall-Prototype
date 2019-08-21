import 'package:flutter/material.dart';
import 'chipdesign.dart';

class FilterGlance extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
        padding: EdgeInsets.fromLTRB(10.0, 10.0, 5, 0),
        child: Text("FILTER",
            style:
                TextStyle(color: Colors.white30, fontWeight: FontWeight.bold)),
      ),
      Container(
        child: Wrap(
          spacing: 3.0, // gap between adjacent chips
          runSpacing: 3.0, // gap between lines
          children: <Widget>[
            ChipDesign("Lifetime", 10.0),
            ChipDesign("Student", 0.0),
            ChipDesign("Salaried", 0.0),
            ChipDesign("Corporate", 0.0),
            ChipDesign("Open", 0.0),
            ChipDesign("My Referral Code Users", 0.0),
            ChipDesign("+10", 0.0),
          ],
        ),
      ),
      ],
    );
  }
}
