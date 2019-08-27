import 'package:flutter/material.dart';
import 'package:total_recall/style.dart';
import 'package:share/share.dart';

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String text = "Use my Referral Code A54FQ on the RedCarpet app to recieve instant credit. Download now from the playstore.";
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
                            onPressed: text.isEmpty
                          ? null
                          : () {
                              // A builder is used to retrieve the context immediately
                              // surrounding the RaisedButton.
                              //
                              // The context's `findRenderObject` returns the first
                              // RenderObject in its descendent tree when it's not
                              // a RenderObjectWidget. The RaisedButton's RenderObject
                              // has its position and size after it's built.
                              final RenderBox box = context.findRenderObject();
                              Share.share(text,
                                  subject: "Code",
                                  sharePositionOrigin:
                                      box.localToGlobal(Offset.zero) &
                                          box.size);
                            /*
                            },
                              print("LMAOOO");
                               final RenderBox box = context.findRenderObject();
                              Share.share(text,
                                  subject: "Code",
                                  sharePositionOrigin:
                                      box.localToGlobal(Offset.zero) &
                                          box.size); */
                            },
                            color: Colors.white,
                          ),
                        ],
                      ))
                ],
              ))),
    );
  }
}
