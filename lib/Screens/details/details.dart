import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nutrition_app/Models/Item.dart';
import 'package:nutrition_app/components/app_bar.dart';
import 'package:nutrition_app/constants.dart';

import 'components/ingredients.dart';
import 'components/title.dart';

class DetailsScreen extends StatelessWidget {
  final Item item;

  const DetailsScreen({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: buildAppBar(context,
          leading: IconButton(
              icon: SvgPicture.asset('assets/icons/back.svg'),
              onPressed: () {
                Navigator.pop(context);
              }),
          title: 'Detail',
          actions: <Widget>[
            IconButton(icon: SvgPicture.asset(''), onPressed: () {})
          ]),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            margin: EdgeInsets.only(top: size.height * 0.2),
            padding: EdgeInsets.only(top: size.height * 0.2),
            height: size.height * 0.8,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kDefaultPadding * 5),
                  topRight: Radius.circular(kDefaultPadding * 5),
                ),
                color: Color(item.color)),
            child: SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(
                  kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleBar(item: item),
                    SizedBox(height: kDefaultPadding),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: size.width * 0.4,
                          padding: EdgeInsets.all(kDefaultPadding),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              item.tijd,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: kDefaultPadding),
                        Container(
                          width: size.width * 0.4,
                          padding: EdgeInsets.all(kDefaultPadding),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              item.aantal,
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    SizedBox(height: kDefaultPadding),
                    Center(
                      child: Text(
                        'Ingredients',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    SizedBox(height: kDefaultPadding),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: kDefaultPadding),
                        Column(
                          children: item.ingrediants
                              .map((ingredient) => Padding(
                                    padding: EdgeInsets.symmetric(vertical: 4),
                                    child: Row(
                                      children: [
                                        Text('\u2022 '),
                                        Text(ingredient,
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white)),
                                      ],
                                    ),
                                  ))
                              .toList(),
                        ),
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(top: kDefaultPadding),
                            child: Text(
                              'Voeding',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(height: kDefaultPadding),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: item.voeding
                                .map((voeding) => Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: kDefaultPadding / 2),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: kDefaultPadding,
                                          vertical: kDefaultPadding / 4),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(color: Colors.grey),
                                      ),
                                      child: Text(
                                        voeding,
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.white),
                                      ),
                                    ))
                                .toList(),
                          ),
                        ),
                        SizedBox(height: kDefaultPadding * 2),
                      ],
                    ),
                    SizedBox(height: kDefaultPadding * 2),
                    SizedBox(height: kDefaultPadding),
                    Center(
                      child: Text(
                        'Stappen plan',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    SizedBox(height: kDefaultPadding),
                    Center(
                      child: Text(
                        item.description,
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Hero(
              tag: item.id,
              child: Image.asset(
                item.image,
                height: size.height * 0.4,
                fit: BoxFit.fitHeight,
              )),
        ],
      ),
    );
  }
}
