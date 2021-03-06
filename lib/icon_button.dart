import 'package:flutter/material.dart';

import 'constants.dart';

class RoundedIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  RoundedIconButton({this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6,
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      shape: CircleBorder(),
      fillColor: kFloatingActionButton,
      onPressed: onPressed,
      child: Icon(
        icon,
        size: 25,
        color: Colors.white,
      ),
    );
  }
}
