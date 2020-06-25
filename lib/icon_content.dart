import 'package:flutter/material.dart';

import 'constants.dart';

class IconContent extends StatelessWidget {
  final String text;
  final IconData icon;

  IconContent({this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 15,
        ),
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          text,
          style: labelTextStyle,
        )
      ],
    );
  }
}
