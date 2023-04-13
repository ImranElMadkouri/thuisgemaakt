import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nutrition_app/Models/Item.dart';

import '../../../constants.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({
    Key key,
    @required this.item,
  }) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                item.name,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/star.svg',
                  width: kDefaultPadding * 0.8,
                ),
                SizedBox(width: kDefaultPadding * 0.5),
                Text(
                  '${item.rating.toString()} (${item.ratingCount.toString()})',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
