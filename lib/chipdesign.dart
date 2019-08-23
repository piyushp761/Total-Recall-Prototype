import 'package:flutter/material.dart';
import 'style.dart';

const Map<String, Set<String>> _materialActions = <String, Set<String>>{
  'poker': <String>{'cash in'},
  'tortilla': <String>{'fry', 'eat'},
  'fish and': <String>{'fry', 'eat'},
  'micro': <String>{'solder', 'fragment'},
  'wood': <String>{'flake', 'cut', 'splinter', 'nick'},
};

class ChipDesign extends StatelessWidget {
  final String _label;

  ChipDesign(this._label);

  final Set<String> _materials = <String>{};

  @override
  Widget build(BuildContext context) {
    final List<Widget> chips = _materials.map<Widget>((String name) {
      return ActionChip(
            key: ValueKey<String>(name),
            backgroundColor: ColorDarkBG,
            label: Text(name),
            onPressed: () {
              print("If you stand for nothing, Burr, what’ll you fall for?");
            },
          );
    }).toList();
    /*
        ActionChip(
            label: Text(
              _label,
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: ColorDarkFG,
            onPressed: () {
              print("If you stand for nothing, Burr, what’ll you fall for?");
            }
            )
            */
  }
}
