import 'package:flutter/material.dart';
import 'package:flutter_demo/core/constants/app_colors.dart';
import 'package:flutter_demo/core/shared/title_builder.dart';
import '../constants/constants.dart';

class BigggButton extends StatelessWidget {
  // final IconData theLeadingIcon;
  final String theButtonTitle;
  final Color theTextColor;
  final Color theButtonColor;

  final void Function()? onTaped;

  BigggButton({
    Key? key,
    // required this.theLeadingIcon,
    required this.theButtonTitle,
    required this.onTaped,
    required this.theTextColor,
    required this.theButtonColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          theSmallPadding,
        ),
        border: Border.all(
          color: AppColor.kPrimaryColor,
        ),
      ),
      child: SizedBox(
        height: 50,
        width: double.infinity,
        child: Container(
          width: double.infinity,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              theSmallPadding,
            ),
          ),
          child: MaterialButton(
            color: theButtonColor,
            elevation: 5,
            // shape: ShapeBorder.lerp(a, b, t),

            height: 70,
            child: TitleBuilder(
              isBold: true,
              theTitle: theButtonTitle,
              textColor: theTextColor,
            ),
            onPressed: onTaped,
          ),
        ),
      ),
    );
  }
}




// class BigButtonBuilder extends StatelessWidget {
//   String theTitle;
//   void Function()? onPressed;

//   BigButtonBuilder({
//     Key? key,
//     required this.theTitle,
//     required this.onPressed,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 50,
//       width: double.infinity,
//       child: Container(
//         width: double.infinity,
//         clipBehavior: Clip.hardEdge,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(40),
//         ),
//         child: MaterialButton(
//           color: AppColor.kPrimaryColor,
//           elevation: 5,
//           // shape: ShapeBorder.lerp(a, b, t),

//           height: 70,
//           child: BigTitleBuilder(
//             textColor: AppColor.kColorFour,
//             theTitle: theTitle,
//           ),
//           onPressed: onPressed,
//         ),
//       ),
//     );
//   }
// }
