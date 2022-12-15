import 'package:flutter/material.dart';
import 'package:flutter_demo/core/constants/app_colors.dart';
import 'package:flutter_demo/core/constants/constants.dart';

class TheInputField extends StatelessWidget {
  // final String? Function(String?)? theValidator;
  // final TextEditingController? theTextEditingController;
  // final Key? theKey;
  final String theHient;
  final double theRadus;

  final Color theBorderColor;
  // final Color theInputColor;
  // final double theBorderRadius, thePadding;
  // final IconData theLeadingIcon;
  final void Function()? onIconTap;
  final bool isPassword;
  final TextInputType theInputType;

  const TheInputField({
    Key? key,
    // required this.theValidator,
    // required this.theTextEditingController,
    // required this.theKey,
    required this.theHient,
    required this.theRadus,
    required this.theBorderColor,
    // required this.theInputColor,
    // required this.theBorderRadius,
    // required this.thePadding,
    // required this.theLeadingIcon,
    required this.isPassword,
    required this.theInputType,
    this.onIconTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,
      padding: EdgeInsets.symmetric(horizontal: theDefaultPadding),
      // margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: theBorderColor),
        borderRadius: BorderRadius.circular(
          theRadus,
        ),
      ),
      child: TextFormField(
        // validator: theValidator,

// onSubmitted: ,
        // key: theKey,
        // controller: theTextEditingController,

        keyboardType: theInputType,
        obscureText: isPassword == false ? false : true,
        style: Theme.of(context).textTheme.bodyText1,
        decoration: InputDecoration(
            fillColor: AppColor.kPrimaryColor.withOpacity(.2),
            border: InputBorder.none,
            icon: GestureDetector(
              onTap: onIconTap,
              // child: Icon(
              //   // theLeadingIcon,
              //   color: Theme.of(context).textTheme.bodyText1!.color!,
              // ),
            ),
            hintText: theHient,
            // hintStyle: Theme.of(context)
            //     .textTheme
            //     .bodyText1!
            //     .copyWith(color: Colors.black),
            hintStyle: TextStyle(
              color: Colors.black,
            )),
      ),
    );
  }
}


// TheSearchBar


                          // isPassword: false,
                          // textInputType: TextInputType.name,
                          // theSize: Get.width,
                          // theHint: AppLocal.Email.tr,
                          // theLeadingIcon: Icons.email_outlined,
                          // backgroundColor: AppColor.theMainLightColor,




                         