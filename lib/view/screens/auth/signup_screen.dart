import 'package:flutter/material.dart';
import 'package:flutter_demo/controller/signup_controller.dart';
import 'package:flutter_demo/core/constants/app_colors.dart';
import 'package:flutter_demo/core/constants/app_images.dart';
import 'package:flutter_demo/core/constants/constants.dart';
import 'package:flutter_demo/core/shared/big_button.dart';
import 'package:flutter_demo/core/shared/custom_form_fieal.dart';
import 'package:flutter_demo/view/screens/auth/signin_screen.dart';
import 'package:flutter_demo/view/screens/auth/widgets/lable_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

TextEditingController? userNaEditingController = TextEditingController();
TextEditingController? phoneNumEditingController = TextEditingController();
TextEditingController? passwordEditingController = TextEditingController();
TextEditingController? repasswordEditingController = TextEditingController();
SignupControllerImp signupControllerImp = Get.put(SignupControllerImp());

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(shrinkWrap: true, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: theDefaultPadding),
          child: Form(
            // signup form
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
                const LableBuilder(lable: "الاسم"),
                emptySpace,
                CustomFormFiea(
                  // user name text
                  theHintText: 'الاسم',
                  textEditingController: userNaEditingController,
                  theTextInputType: TextInputType.text,
                  theIndex: 0,
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
                emptySpace,
                emptySpace,
                CustomFormFiea(
                  theHintText: 'تاكيد كلمة السر',
                  textEditingController: repasswordEditingController,
                  theTextInputType: TextInputType.text,
                  theIndex: 3,
                ),
                const SizedBox(
                  height: 42,
                ),

                //
                //

                BigggButton(
                  theButtonTitle: 'انشاء حساب',
                  onTaped: () {
                    signupControllerImp.signup();
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
                    "لديك حساب مسبقا؟",
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: AppColor.kGreyTextColor,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),

                emptySpace,
                emptySpace,

                BigggButton(
                  theButtonTitle: 'تسجيل دخول',
                  onTaped: () {
                    Get.offAll(const SigninScreen());
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
