import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plants_app/constants.dart';

import 'action_card_button.dart';
import 'image_with_bar_options.dart';
import 'plant_title_with_price.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          const ImageWithBarOptions(),
          const PlantTitleWithPrice(
            title: "Angelica",
            country: "Russia",
            price: 440,
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: TextButton(
                  style: TextButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.only(topRight: Radius.circular(20))),
                      backgroundColor: kPrimaryColor,
                      foregroundColor: Colors.white),
                  onPressed: () {},
                  child: const Text(
                    "Buy Now",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              Expanded(
                  child: TextButton(
                //style: TextButton.styleFrom(foregroundColor: Colors.white),
                onPressed: () {},
                child: const Text("Description"),
              ))
            ],
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
        ],
      ),
    );
  }
}
