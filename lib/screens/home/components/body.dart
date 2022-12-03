import 'package:flutter/material.dart';
import 'package:plants_app/constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: <Widget>[
        SizedBox(
          height: size.height * 0.2,
          child: Stack(
            children: <Widget>[
              Container(
                height: size.height * 0.2 - 27,
                decoration: const BoxDecoration(
                    color: Color(kPrimaryColor),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(36),
                        bottomRight: Radius.circular(36))),
              ),
              Positioned(
                  child: Container(
                height: 54,
                margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              ))
            ],
          ),
        )
      ],
    );
  }
}
