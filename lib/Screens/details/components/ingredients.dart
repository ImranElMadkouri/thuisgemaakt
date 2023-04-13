import 'package:flutter/material.dart';
import 'package:nutrition_app/Models/Item.dart';

import '../../../constants.dart';

class Ingredients extends StatelessWidget {
  const Ingredients({
    Key key,
    @required this.item,
  }) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10.0),
        Text(
          item.ingrediants.join('\n'),
          style: TextStyle(
            fontFamily: 'Courier',
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
