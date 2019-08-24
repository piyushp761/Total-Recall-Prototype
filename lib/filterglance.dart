import 'package:flutter/material.dart';
import 'style.dart';
import 'Filters/filters.dart';

const List<String> _defaultMaterials = <String>[
  'Lifetime',
  'Student',
  'Salaried',
  'Open',
  'Corporate',
  'My Referal Code Users',
  '+10',
];

final Set<String> _materials = <String>{};

void reset() {
  _materials.clear();
  _materials.addAll(_defaultMaterials);
}

List<Widget> chips(BuildContext context) => _materials.map<Widget>((String name) {
  return ActionChip(
      padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
      key: ValueKey<String>(name),
      backgroundColor: ColorDarkFG,
      label: Text(
        name,
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {
                Navigator.push(context,
           new MaterialPageRoute(builder: (context) => new Filters()));
      });
}).toList();

class ChipsTile extends StatelessWidget {
  const ChipsTile({
    Key key,
    this.label,
    this.children,
  }) : super(key: key);

  final String label;
  final List<Widget> children;

  // Wraps a list of chips into a ListTile for display as a section in the demo.
  @override
  Widget build(BuildContext context) {
    final List<Widget> cardChildren = <Widget>[
      Container(
        padding: const EdgeInsets.only(top: 16.0, bottom: 4.0),
        alignment: Alignment.topLeft,
        margin: EdgeInsets.fromLTRB(15.0, 0, 0, 0),
        child: Text(label,
            textAlign: TextAlign.start,
            style:
                TextStyle(color: Colors.white24, fontWeight: FontWeight.bold)),
      ),
    ];
    if (children.isNotEmpty) {
      cardChildren.add(Container(
          constraints: BoxConstraints(minHeight: 100, maxHeight: 100),
          child: SingleChildScrollView(
              child: Wrap(
                  spacing: 10.0,
                  children: children.map<Widget>((Widget chip) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(3.0, 0.0, 3.0, 0.0),
                      child: chip,
                    );
                  }).toList()))));
    } else {
      final TextStyle textStyle = Theme.of(context)
          .textTheme
          .caption
          .copyWith(fontStyle: FontStyle.italic);
      cardChildren.add(Semantics(
        container: true,
        child: Container(
          alignment: Alignment.center,
          constraints: const BoxConstraints(minWidth: 48.0, minHeight: 48.0),
          padding: const EdgeInsets.all(8.0),
          child: Text('None', style: textStyle),
        ),
      ));
    }

    return Card(
      semanticContainer: false,
      elevation: 0.0,
      color: ColorDarkBG,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: cardChildren,
      ),
    );
  }
}
