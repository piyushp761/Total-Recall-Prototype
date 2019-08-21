import 'package:flutter/material.dart';

class Appbar extends StatelessWidget with PreferredSizeWidget {
  final String _titleText;
  Appbar(this._titleText);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: false,
      pinned: true,
      expandedHeight: 150.0,
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      flexibleSpace: const FlexibleSpaceBar(
        title: Text("User Status", textAlign: TextAlign.justify,),
        titlePadding: EdgeInsets.all(15.0),
        
      ),
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
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
