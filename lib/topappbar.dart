import 'package:flutter/material.dart';
import 'package:total_recall/style.dart';

class Appbar extends StatelessWidget with PreferredSizeWidget {
  final String _titleText;
  Appbar(this._titleText);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: false,
      pinned: true,
      expandedHeight: 120.0,
      elevation: 0.0,
      backgroundColor: ColorDarkBG,
      flexibleSpace: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            width: 250.0,
            child: FlexibleSpaceBar(
              title: Text(
                "User Status",
                textAlign: TextAlign.justify,
              ),
              titlePadding: EdgeInsets.all(15.0),
            ),
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {},
            color: Colors.white,
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
            color: Colors.white,
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
