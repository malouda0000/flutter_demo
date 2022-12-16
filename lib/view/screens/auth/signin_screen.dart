import 'package:flutter/material.dart';
import 'package:flutter_demo/controller/signin_controller.dart';
import 'package:flutter_demo/controller/signup_controller.dart';
import 'package:flutter_demo/core/constants/app_colors.dart';
import 'package:flutter_demo/core/constants/app_images.dart';
import 'package:flutter_demo/core/constants/constants.dart';
import 'package:flutter_demo/core/shared/big_button.dart';
import 'package:flutter_demo/core/shared/custom_form_fieal.dart';
import 'package:flutter_demo/view/screens/auth/signup_screen.dart';
import 'package:flutter_demo/view/screens/auth/widgets/lable_builder.dart';
import 'package:flutter_demo/view/screens/home/home_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

TextEditingController? phoneNumEditingController = TextEditingController();
TextEditingController? passwordEditingController = TextEditingController();
SigninControllerImp signinControllerImp = Get.put(SigninControllerImp());

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(shrinkWrap: true, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: theDefaultPadding),
          child: Form(
            // signIn form
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(height: 84),
                Center(
                  child: SvgPicture.asset(
                    // i have used svg images for better qualty
                    AppImages.mainLogoSvg,
                  ),
                ),
                const SizedBox(
                  height: 42,
                ),

                //
                //

                emptySpace,
                emptySpace,
                const LableBuilder(lable: "رقم الهاتف"),
                emptySpace,
                CustomFormFiea(
                  theHintText: 'ادخل رقم هاتفك',
                  textEditingController: phoneNumEditingController,
                  theTextInputType: const TextInputType.numberWithOptions(
                    decimal: false,
                  ),
                  theIndex: 1,
                ),

                //
                //

                emptySpace,
                emptySpace,
                const LableBuilder(lable: "كلمة السر"),
                emptySpace,
                CustomFormFiea(
                  theHintText: 'ادخل كلمة السر',
                  textEditingController: passwordEditingController,
                  theTextInputType: TextInputType.text,
                  theIndex: 2,
                ),

                //
                //

                emptySpace,
                emptySpace,
                BigggButton(
                  theButtonTitle: 'تسجيل الدخول',
                  onTaped: () {
                    signinControllerImp.signin();
                  },
                  theTextColor: Colors.white,
                  theButtonColor: AppColor.kPrimaryColor,
                ),

                //
                //

                emptySpace,
                emptySpace,
                Center(
                  child: Text(
                    "ليس لديك حساب؟",
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: AppColor.kGreyTextColor,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),

                emptySpace,
                emptySpace,

                BigggButton(
                  theButtonTitle: 'انشاء حساب',
                  onTaped: () {
                    Get.offAll(const SignupScreen());
                  },
                  theTextColor: AppColor.kPrimaryColor,
                  theButtonColor: Theme.of(context).scaffoldBackgroundColor,
                ),
                emptySpace,
                emptySpace,
              ],
            ),
          ),
        ),
      ])),
    );
  }
}
