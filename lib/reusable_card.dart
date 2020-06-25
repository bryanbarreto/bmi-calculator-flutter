import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color checkedColor;
  final Widget cardChild;
  final Function onPress;

  ReusableCard({@required this.checkedColor, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: checkedColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
