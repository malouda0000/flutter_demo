import 'package:flutter/material.dart';
import 'package:flutter_demo/core/constants/app_colors.dart';
import 'package:flutter_demo/core/shared/title_builder.dart';

class TitleCabsol extends StatelessWidget {
  final bool isActive;
  final String theTitle;
  const TitleCabsol({
    Key? key,
    required this.isActive,
    required this.theTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(
      //   horizontal: 15,
      // ),

      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isActive
            ? AppColor.kPrimaryColor
            : Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(
          30,
        ),
      ),
      child: Expanded(
        child: TitleBuilder(
            isBold: true,
            theTitle: theTitle,
            textColor: isActive
                ? Theme.of(context).scaffoldBackgroundColor
                : Theme.of(context).textTheme.headline6!.color!),
      ),
    );
  }
}
