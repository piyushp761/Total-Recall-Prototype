import 'package:flutter/material.dart';
import 'package:total_recall/style.dart';

class Appbar extends StatelessWidget with PreferredSizeWidget {
  final String _titleText;
  final bool _iconButtonsRequired;
  Appbar(this._titleText, this._iconButtonsRequired);

  @override
  Widget build(BuildContext context) {
    List<Widget> pleaseWork = <Widget>[
      Container(
        width: 250.0,
        child: FlexibleSpaceBar(
          title: Text(
            _titleText,
            textAlign: TextAlign.justify,
            style: TextStyle(fontWeight: FontWeight.w100),
          ),
          titlePadding: EdgeInsets.all(15.0),
        ),
      ),
      Spacer(),
    ];
    if (_iconButtonsRequired) {
      pleaseWork.add(Row(
        children: <Widget>[IconButton(
          icon: Icon(Icons.refresh),
          onPressed: () {},
          color: Colors.white,
        ),
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
          color: Colors.white,
        ),
        ], 
      ));
    }

    return SliverAppBar(
      floating: false,
      pinned: true,
      expandedHeight: 120.0,
      elevation: 0.0,
      backgroundColor: ColorDarkBG,
      flexibleSpace: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: pleaseWork,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
