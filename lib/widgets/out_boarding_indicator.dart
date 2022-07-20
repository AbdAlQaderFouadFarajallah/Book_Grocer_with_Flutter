import 'package:flutter/material.dart';

class OutBoardingIndicator extends StatelessWidget {
  final double marginEnd;
  final bool selected;

  OutBoardingIndicator({
    required this.selected,
    this.marginEnd = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 14,
      height: 14,
      decoration: BoxDecoration(
        color: selected ? const Color(0XFF5ABD8C) : Colors.grey,
        borderRadius: BorderRadius.circular(7),
      ),
      margin: EdgeInsetsDirectional.only(end: marginEnd),
    );
  }
}
