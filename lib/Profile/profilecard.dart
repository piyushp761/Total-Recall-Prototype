import 'package:flutter/material.dart';
import 'package:total_recall/style.dart';

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                      //constraints: BoxConstraints.expand(height: 200.0),
                      child: Center(
                          child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Container(
                              width: 133.0,
                              height: 133.0,
                              decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: new DecorationImage(
                                      fit: BoxFit.fill,
                                      image: new NetworkImage(
                                          "https://i.imgur.com/BoN9kdC.png")))),
                        ],
                      ))),
                  Container(
                    padding: EdgeInsets.fromLTRB(10.0, 9, 10.0, 0.0),
                    child: new Text(
                      "John Doe (ACTIVE)",
                      style: CardBodyTextStyle,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 9),
                    child: new Text("johndoe@email.com ",
                        style: CardBodyTextStyle),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 9),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("A54FQ", style: AppBarTextStyle),
                          IconButton(
                            icon: Icon(Icons.share),
                            onPressed: () {},
                            color: Colors.white,
                          ),
                        ],
                      ))
                ],
              ))),
    );
  }
}
