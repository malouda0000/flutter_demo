import 'package:flutter/material.dart';
import 'package:flutter_demo/core/constants/app_colors.dart';
import 'package:flutter_demo/core/constants/constants.dart';
import 'package:get/get.dart';

class CustomFormFiea extends StatelessWidget {
  final TextEditingController? textEditingController;
  final String? theHintText;
  static bool isActive = false;
  const CustomFormFiea(
      {super.key, this.theHintText, this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: textEditingController,
        // textDirection: TextDirection.rtl,
        textAlign: TextAlign.end,
        cursorColor: AppColor.kPrimaryColor,
        onTap: () {},
        autofocus: true,
        keyboardType: TextInputType.text,
        style: Theme.of(context).textTheme.bodyText1!.copyWith(
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Theme.of(context).scaffoldBackgroundColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(theSmallPadding),
          ),
          // focusedBorder: OutlineInputBorder(),
          // focusColor: AppColor.kinputformFillColor,
          // focusColor: AppColor.kPrimaryColor,
          //  focusedBorder: InputBorder,

          hintText: theHintText,
          // hintStyle: TextStyle()

          // focusedBorder: OutlineInputBorder(
          //   borderSide:
          //       const BorderSide(color: AppColor.kPrimaryColor, width: 2.0),
          //   // borderRadius: BorderRadius.circular(25.0),
          // ),
        ));
  }
}



//  Container(
//       clipBehavior: Clip.hardEdge,
//       height: 50,
//       width: Get.width - (theDefaultPadding * 2),
//       padding: const EdgeInsets.symmetric(horizontal: theSmallPadding),
//       decoration: BoxDecoration(
//         border: Border.all(
//           // color: isActive ? AppColor.kPrimaryColor : AppColor.kLightTextColor,
//           color: AppColor.kPrimaryColor,
//         ),
//         borderRadius: BorderRadius.circular(
//           theDefaultRaduis,
//         ),
//       ),
//       child: Expanded(
//         child: TextFormField(
//           // textAlign: TextAlign.,
//           textDirection: TextDirection.rtl,
//           // validator: theValidator,
//           // onSubmitted: ,
//           // key: theKey,
          
//           controller: textEditingController,
//           keyboardType: TextInputType.text,
//           style: Theme.of(context).textTheme.bodyText1!.copyWith(
//                 fontWeight: FontWeight.w500,
//                 color: Colors.black,
//               ),
//           // showCursor: false,
//           cursorColor: AppColor.kPrimaryColor,
//           // cursorHeight: 10,

//           decoration: InputDecoration(
//             // fillColor: AppColor.kinputformFillColor,
//             hintTextDirection: TextDirection.rtl,

//             border: InputBorder.none,
//             hintText: theHintText,
//             hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
//                   color: AppColor.kLightTextColor,
//                 ),
//             // hintStyle: TextStyle(
//             //   color: Colors.black,
//             // ),
//           ),
//         ),
//       ),
//     )