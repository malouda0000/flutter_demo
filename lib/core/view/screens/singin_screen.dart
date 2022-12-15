import 'package:flutter/material.dart';
import 'package:flutter_demo/core/constants/app_colors.dart';
import 'package:flutter_demo/core/constants/app_images.dart';
import 'package:flutter_demo/core/constants/constants.dart';
import 'package:flutter_demo/core/shared/big_button.dart';
import 'package:flutter_demo/core/shared/the_input_field.dart';
import 'package:flutter_demo/core/shared/title_builder.dart';
import 'package:flutter_demo/core/view/screens/home_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SingInScreen extends StatelessWidget {
  const SingInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: theDefaultPadding,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(
                height: 84,
              ),
              Center(
                child: SvgPicture.asset(
                  // i have used svg images for better qualty
                  AppImages.mainLogoSvg,
                ),
              ),
              const SizedBox(
                height: 42,
              ),
              // TitleBuilder(
              //   theTitle: 'الاسم',
              //   isBold: true,
              // ),

              Text(
                "الاسم",
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              emptySpace,
              TheInputField(
                theHient: 'محمد احمد صالح سعيد',
                isPassword: false,
                theBorderColor: AppColor.kPrimaryColor,
                theInputType: TextInputType.text,
                theRadus: theDefaultRaduis,
              ),
              emptySpace,
              emptySpace,
              Text(
                "رقم الهاتف",
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              emptySpace,
              TheInputField(
                theHient: 'محمد احمد صالح سعيد',
                isPassword: false,
                theBorderColor: AppColor.kPrimaryColor,
                theInputType: TextInputType.text,
                theRadus: theDefaultRaduis,
              ),
              emptySpace,
              emptySpace,
              Text(
                "كلمة السر",
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              emptySpace,
              TheInputField(
                theHient: 'كلمة السر',
                isPassword: false,
                theBorderColor: AppColor.kPrimaryColor,
                theInputType: TextInputType.text,
                theRadus: theDefaultRaduis,
              ),
              emptySpace,
              emptySpace,
              TheInputField(
                theHient: 'تاكيد كلمة السر',
                isPassword: false,
                theInputType: TextInputType.text,
                theBorderColor: AppColor.kPrimaryColor,
                theRadus: theDefaultRaduis,
              ),
              SizedBox(
                height: 42,
              ),

              BigggButton(
                theButtonTitle: 'انشاء حساب',
                onTaped: () {
                  Get.to(HomeScreen());
                },
                theTextColor: Colors.white,
                theButtonColor: AppColor.kPrimaryColor,
              ),

              emptySpace,
              emptySpace,
              Center(
                child: Text(
                  "لديك حساب مسبقا؟",
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: AppColor.kGreyTextColor,
                      ),
                  textAlign: TextAlign.center,
                ),
              ),

              emptySpace,
              emptySpace,

              Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    theSmallPadding,
                  ),
                  border: Border.all(
                    color: AppColor.kPrimaryColor,
                  ),
                ),
                child: BigggButton(
                  theButtonTitle: 'تسجيل دخول',
                  onTaped: () {
                    Get.to(HomeScreen());
                  },
                  theTextColor: AppColor.kPrimaryColor,
                  theButtonColor: Theme.of(context).scaffoldBackgroundColor,
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
