import 'package:flutter/material.dart';
import 'style.dart';

class ChipDesign extends StatelessWidget{
  final String _label;
  final double _padding;

  ChipDesign(this._label, this._padding);

  @override 
  Widget build(BuildContext context){
    return Container(
      child: Chip(
        label: Text(
          _label,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: ColorDarkFG,
        padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
      ),
      margin: EdgeInsets.only(left: 10, right: 3, top: 0, bottom: 0),
    );
  }
}
