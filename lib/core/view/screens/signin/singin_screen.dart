import 'package:flutter/material.dart';
import 'package:flutter_demo/core/constants/app_colors.dart';
import 'package:flutter_demo/core/constants/app_images.dart';
import 'package:flutter_demo/core/constants/constants.dart';
import 'package:flutter_demo/core/shared/big_button.dart';
import 'package:flutter_demo/core/shared/custom_form_fieal.dart';
import 'package:flutter_demo/core/view/screens/home/home_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

TextEditingController? userNaEditingController = TextEditingController();
TextEditingController? phoneNumEditingController = TextEditingController();
TextEditingController? passwordEditingController = TextEditingController();
TextEditingController? repasswordEditingController = TextEditingController();

class SingInScreen extends StatelessWidget {
  const SingInScreen({super.key});

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
                const _lableBuilder(lable: "الاسم"),
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
                const _lableBuilder(lable: "رقم الهاتف"),
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
                const _lableBuilder(lable: "كلمة السر"),
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
                    Get.to(const HomeScreen());
                  },
                  theTextColor: Colors.white,
                  theButtonColor: AppColor.kPrimaryColor,
                ),

                //
                //

                emptySpace,
                emptySpace,
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Get.to(const HomeScreen());
                    },
                    child: Text(
                      "لديك حساب مسبقا؟",
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: AppColor.kGreyTextColor,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),

                emptySpace,
                emptySpace,

                const CreatAccountButton(),
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

class CreatAccountButton extends StatelessWidget {
  const CreatAccountButton({
    Key? key,
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
      child: BigggButton(
        theButtonTitle: 'تسجيل دخول',
        onTaped: () {
          Get.to(const HomeScreen());
        },
        theTextColor: AppColor.kPrimaryColor,
        theButtonColor: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}

class _lableBuilder extends StatelessWidget {
  final String lable;
  const _lableBuilder({
    Key? key,
    required this.lable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      lable,
      style: Theme.of(context).textTheme.headline6!.copyWith(
            fontWeight: FontWeight.w700,
          ),
    );
  }
}
