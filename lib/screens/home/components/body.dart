import 'package:flutter/material.dart';
import 'package:plants_app/constants.dart';
import 'recomended_plants.dart';
import 'featured_plants.dart';
import 'title_with_more_btn.dart';
import 'header_with_search_bar.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBar(size: size),
          TitleWithMoreBtn(title: "Recomended", onPress: () {}),
          const RecomendedPlants(),
          TitleWithMoreBtn(title: "Featured Plants", onPress: () {}),
          const FeaturedPlants(),
          const SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
