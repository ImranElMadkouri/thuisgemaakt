import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nutrition_app/Models/Item.dart';
import 'package:nutrition_app/Screens/home/components/item_card.dart';
import 'package:nutrition_app/components/app_bar.dart';
import 'package:nutrition_app/constants.dart';
import 'package:nutrition_app/Screens/details/premium.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: buildAppBar(context, title: 'Thuisgemaakt', actions: <Widget>[
        IconButton(
          icon: Icon(Icons.star),
          onPressed: () {
            // Navigate to premium screen
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PremiumScreen(),
              ),
            );
          },
        )
      ]),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(kDefaultPadding),
        child: SafeArea(
          // bottom: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: kDefaultPadding),
              StaggeredGridView.countBuilder(
                padding: EdgeInsets.all(0),
                crossAxisCount: 2,
                itemCount: demoItems.length,
                crossAxisSpacing: 10,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                mainAxisSpacing: 0,
                itemBuilder: (context, index) {
                  return ItemCard(item: demoItems[index], index: index);
                },
                staggeredTileBuilder: (index) => StaggeredTile.fit(1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
