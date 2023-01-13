import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plants_app/constants.dart';

import 'action_card_button.dart';

class ImageWithBarOptions extends StatelessWidget {
  const ImageWithBarOptions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: [
            Expanded(
                child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding),
                        icon: SvgPicture.asset("assets/icons/back_arrow.svg")),
                  ),
                  const Spacer(),
                  const ActionCardButton(
                    icon: "assets/icons/sun.svg",
                  ),
                  const ActionCardButton(
                    icon: "assets/icons/icon_2.svg",
                  ),
                  const ActionCardButton(
                    icon: "assets/icons/icon_3.svg",
                  ),
                  const ActionCardButton(
                    icon: "assets/icons/icon_4.svg",
                  ),
                ],
              ),
            )),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(60),
                      bottomLeft: Radius.circular(60)),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 10),
                      color: kPrimaryColor.withOpacity(0.23),
                      blurRadius: 60,
                    )
                  ],
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    alignment: Alignment.centerLeft,
                    image: AssetImage("assets/images/img.png"),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
