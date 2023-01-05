import 'package:flutter/material.dart';
import 'header_with_search_bar.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[HeaderWithSearchBar(size: size)],
      ),
    );
  }
}
