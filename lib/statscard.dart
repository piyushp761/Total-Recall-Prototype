import 'package:flutter/material.dart';
import 'style.dart';

class StatsCard extends StatelessWidget{

  @override 
  Widget build(BuildContext context){
    return Card(
        elevation: 8.0,
        margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: ColorDarkFG,
        child: InkWell(
            splashColor: ColorSplash,
            onTap: () {},
            child: Container(
                decoration: BoxDecoration(color: ColorDarkFG),
                padding: EdgeInsets.fromLTRB(20, 24, 20, 24),
                child: Column(
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.fromLTRB(10.0, 9, 10.0, 9),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("10,0000",
                                style: CardStatTextStyle),
                            Text("Total Users",
                                style: CardCaptionTextStyle),
                          ],
                        )),
                    Container(
                        padding: EdgeInsets.fromLTRB(10.0, 9, 10.0, 9),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("2,310",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0)),
                            Text("Application Review",
                                style: TextStyle(
                                    color: Colors.white,
                                    //fontWeight: FontWeight.bold,
                                    fontSize: 14.0)),
                          ],
                        )),
                    Container(
                        padding: EdgeInsets.fromLTRB(10.0, 9, 10.0, 9),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("1,200",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0)),
                            Text("Payment Complete",
                                style: TextStyle(
                                    color: Colors.white,
                                    //fontWeight: FontWeight.bold,
                                    fontSize: 14.0)),
                          ],
                        ))
                  ],
                ))),
      );
  }
}