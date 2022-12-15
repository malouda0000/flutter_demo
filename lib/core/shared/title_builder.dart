import 'package:flutter/material.dart';
// import 'package:my_demo/core/constants/constants.dart';

class TitleBuilder extends StatelessWidget {
  final String theTitle;
  final bool isBold;
  final Color textColor;
  const TitleBuilder({
    Key? key,
    required this.theTitle,
    required this.isBold,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      theTitle,
      style: isBold
          ? Theme.of(context).textTheme.headline6!.copyWith(
                color: textColor,
              )
          : Theme.of(context).textTheme.headline6!.copyWith(
                color: textColor,
                fontWeight: FontWeight.bold,
              ),
    );
  }
}
