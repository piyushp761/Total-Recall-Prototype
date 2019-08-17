import 'package:flutter/material.dart';
import 'userfunnels.dart';
import 'style.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Total Recall Prototype',
      theme: new ThemeData(
          primaryColor: Color.fromRGBO(58, 66, 86, 1.0), fontFamily: 'Inter'),
      home: new ListPage(title: 'Total Recall'),
    );
  }
}

class ListPage extends StatefulWidget {
  ListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  static List userFunnels; //userFunnels list variable

  @override //load user funnel date into the userFunnels variable and load Filters in to filters
  void initState() {
    userFunnels = getUserFunnels();
    super.initState();
  }

  //BUILD APP FROM HERE

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: topAppBar,
      bottomNavigationBar: makeBottom,
      body: makeBody,
    );
  }

  final topAppBar = AppBar(
    elevation: 0.1,
    backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
    title: Text("User Status"),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.refresh),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(Icons.search),
        onPressed: () {},
      )
    ],
  );

  final makeBody = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Card(
        elevation: 8.0,
        margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        color: Color.fromRGBO(64, 75, 96, .9),
        child: InkWell(
            splashColor: Color.fromRGBO(58, 66, 86, 1.0),
            onTap: () {},
            child: Container(
                decoration:
                    BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                child: Column(
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.fromLTRB(10.0, 3, 10.0, 3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("10,0000",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0)),
                            Text("Total Users",
                                style: TextStyle(
                                    color: Colors.white,
                                    //fontWeight: FontWeight.bold,
                                    fontSize: 14.0)),
                          ],
                        )),
                    Container(
                        padding: EdgeInsets.fromLTRB(10.0, 3, 10.0, 3),
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
                        padding: EdgeInsets.fromLTRB(10.0, 3, 10.0, 3),
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
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(10.0, 0, 5, 0),
        child: Text("FILTER",
            style:
                TextStyle(color: Colors.white30, fontWeight: FontWeight.bold)),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 0, 5, 0),
                child: Chip(
                  label:
                      Text('Lifetime', style: TextStyle(color: Colors.white)),
                  backgroundColor: Color.fromRGBO(64, 75, 96, .9),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Chip(
                  label: Text('Student', style: TextStyle(color: Colors.white)),
                  backgroundColor: Color.fromRGBO(64, 75, 96, .9),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Chip(
                  label:
                      Text('Salaried', style: TextStyle(color: Colors.white)),
                  backgroundColor: Color.fromRGBO(64, 75, 96, .9),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Chip(
                  label: Text('Open', style: TextStyle(color: Colors.white)),
                  backgroundColor: Color.fromRGBO(64, 75, 96, .9),
                ),
              ),
            ],
          ),
        ],
      ),
      Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 0, 5, 0),
            child: Chip(
              label: Text('Corporate', style: TextStyle(color: Colors.white)),
              backgroundColor: Color.fromRGBO(64, 75, 96, .9),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
            child: Chip(
              label: Text('My Referral Code Users',
                  style: TextStyle(color: Colors.white)),
              backgroundColor: Color.fromRGBO(64, 75, 96, .9),
            ),
          ),
        ],
      ),
      Expanded(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return makeCard(userFunnels[index]);
          },
        ),
      )
    ],
  );
}

Card makeCard(UserFunnels userFunnels) => Card(
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
        child: makeListTile(userFunnels),
      ),
    );
/*
final makeCard = Card(
  elevation: 8.0,
  margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
  child: Container(
    decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
    child: makeListTile,
  ),
);
*/

ListTile makeListTile(UserFunnels userFunnels) => ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      leading: Container(
          padding: EdgeInsets.only(right: 12.0),
          decoration: new BoxDecoration(
              border: new Border(
                  right: new BorderSide(width: 1.0, color: Colors.white24))),
          child: Text(userFunnels.userNumbers.toString(),
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0))),
      title: Text(
        userFunnels.funnelName,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        children: <Widget>[
          Expanded(
              flex: 4,
              child: Text(userFunnels.funnelDescription,
                  style: TextStyle(color: Colors.white))),
        ],
      ),
      trailing:
          Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
      onTap: () {
/*
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => DetailPage()));
                */
      },
    );

/*

final makeListTile = ListTile(
    contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
    leading: Container(
      padding: EdgeInsets.only(right: 12.0),
      decoration: new BoxDecoration(
          border: new Border(
              right: new BorderSide(width: 1.0, color: Colors.white24))),
      child: Text("10",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0)),
    ),
    title: Text(
      "New Referrals",
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    ),
    // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

    subtitle: Row(
      children: <Widget>[
        Text("Contact users to explain process.",
            style: TextStyle(color: Colors.white))
      ],
    ),
    trailing:
        Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0));
*/
final makeBottom = Container(
  height: 55.0,
  child: BottomAppBar(
    color: Color.fromRGBO(58, 66, 86, 1.0),
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

List getUserFunnels() {
  return [
    UserFunnels(
        funnelName: "New Referrals",
        userNumbers: 20,
        funnelDescription: "Contact users to explain process."),
    UserFunnels(
        funnelName: "Document Pending",
        userNumbers: 20,
        funnelDescription: "Get users to upload all required docs."),
    UserFunnels(
        funnelName: "Sign Pending",
        userNumbers: 20,
        funnelDescription: "Get Users to E-Sign."),
    UserFunnels(
        funnelName: "Resubmit Docs",
        userNumbers: 20,
        funnelDescription: "Get users to update missing docs."),
    UserFunnels(
        funnelName: "Application Review",
        userNumbers: 20,
        funnelDescription: "Wait for review to be completed."),
    UserFunnels(
        funnelName: "Payment Pending",
        userNumbers: 20,
        funnelDescription: "Wait for review to be completed."),
    UserFunnels(
        funnelName: "Additional Docs Submit",
        userNumbers: 20,
        funnelDescription: "Get users to upload additional Docs."),
    UserFunnels(
        funnelName: "Additional Review",
        userNumbers: 20,
        funnelDescription: "Additional review is being conducted."),
    UserFunnels(
        funnelName: "Credit Rejected",
        userNumbers: 20,
        funnelDescription: "Rejected users. No action required."),
    UserFunnels(
        funnelName: "Payment Complete",
        userNumbers: 20,
        funnelDescription: "All done. No action required."),
    UserFunnels(
        funnelName: "Exclusion",
        userNumbers: 20,
        funnelDescription:
            "User marked as temporary rejected. No action required."),
  ];
}
