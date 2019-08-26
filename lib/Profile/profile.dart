import 'package:flutter/material.dart';
import 'package:total_recall/Filters/filters.dart';
import 'package:total_recall/Profile/profilecard.dart';
import 'package:total_recall/Profile/profileoptions.dart';
import 'package:total_recall/bottomnavbar.dart';
import 'package:total_recall/filterglance.dart';
import 'package:total_recall/statscard.dart';
import 'package:total_recall/style.dart';
import '../topappbar.dart';
import 'data.dart';




class Profile extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'My Profile',
      theme: new ThemeData(primaryColor: ColorDarkBG, fontFamily: 'Inter'),
      home: new ListPage(title: 'Profile'),
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
  static List profileOptions; //userFunnels list variable

  @override //load user funnel date into the userFunnels variable and load Filters in to filters
  void initState() {
    profileOptions = getUserOperations();
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
          Appbar("Profile", false),
          SliverFillRemaining(
            child: makeBody(context),
          )
        ],
      ),
    );
  }

  static makeBody(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      ProfileCard(),
      Expanded(
        child: ListView.builder(
          padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: 7,
          itemBuilder: (BuildContext context, int index) {
            return makeCard(profileOptions[index], context);
          },
        ),
      )
    ],
  );
}



Card makeCard(ProfileOptions profileOptions, BuildContext context) => Card(
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: ColorDarkFG),
        child: makeListTile(profileOptions, context),
      ),
    );

ListTile makeListTile(ProfileOptions profileOptions, BuildContext context) => ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      leading: Container(
          padding: EdgeInsets.only(right: 12.0),
          decoration: new BoxDecoration(
              border: new Border(
                  right: new BorderSide(width: 1.0, color: Colors.white24))),
          child: profileOptions.optionIcon,
              ),
      title: Text(
        profileOptions.optionName,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        children: <Widget>[
          Expanded(
              flex: 4,
              child: Text(profileOptions.optionDescription,
                  style: TextStyle(color: Colors.white))),
        ],
      ),
      trailing:
          Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => Filters()));
                            
      },
    );


