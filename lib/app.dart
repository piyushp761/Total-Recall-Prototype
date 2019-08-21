import 'package:flutter/material.dart';
import 'package:total_recall/bottomnavbar.dart';
import 'package:total_recall/filterglance.dart';
import 'package:total_recall/statscard.dart';
import 'userfunnels.dart';
import 'style.dart';
import 'topappbar.dart';

class TotalRecall extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Total Recall Prototype',
      theme: new ThemeData(primaryColor: ColorDarkBG, fontFamily: 'Inter'),
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
      backgroundColor: ColorDarkBG,
      bottomNavigationBar: BottomNavBar(1, 55.0),
      body: CustomScrollView(
        slivers: <Widget>[
          Appbar("User Status"),
          SliverFillRemaining(
            child: makeBody,
          )
        ],
      )
      ,
    );
  }

  static final makeBody = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      StatsCard(),
      FilterGlance(),
      Expanded(
        child: ListView.builder(
          padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
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
        decoration: BoxDecoration(color: ColorDarkFG),
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
