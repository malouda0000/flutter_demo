import 'package:flutter/material.dart';
import 'package:flutter_demo/controller/onbording_controller.dart';
import 'package:flutter_demo/core/constants/app_colors.dart';
import 'package:flutter_demo/view/screens/onbording/widgets/onbording_data.dart';
import 'package:flutter_demo/view/screens/onbording/widgets/onbording_pages_slider.dart';
import 'package:flutter_demo/view/screens/signin/singup_screen.dart';
import 'package:get/get.dart';

late PageController pageController;

class OnbordingScreen extends StatelessWidget {
  const OnbordingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBordingControllerImp());
    return Scaffold(
      // backgroundColor: AppColor.kPrimaryColor,
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 40,
                child: OnBordingPageSlider(),
              ),
              Expanded(
                // flex: 1,
                child: _SlidingDots(),
              )
            ],
          ),
          SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                _SkipButton(),
                _NextButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _NextButton extends GetView<OnBordingControllerImp> {
  const _NextButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    OnBordingControllerImp onBordingControllerImp =
        Get.put(OnBordingControllerImp());

    return Container(
      height: 40,
      margin: const EdgeInsets.only(top: 20),
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        color: AppColor.kPrimaryColor,
        shape: BoxShape.circle,
        // borderRadius: BorderRadius.circular(
        //   500,
        // ),
      ),
      child: MaterialButton(
        elevation: 0,
        color: AppColor.kPrimaryColor,
        child: Icon(
          Icons.arrow_forward_ios_rounded,
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
        onPressed: () async {
          onBordingControllerImp.next();
        },
      ),
    );
  }
}

class _SkipButton extends GetView<OnBordingControllerImp> {
  const _SkipButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        // color: AppColor.kPrimaryColor,
        borderRadius: BorderRadius.circular(
          500,
        ),
      ),
      child: MaterialButton(
        elevation: 0,
        // color: AppColor.kPrimaryColor,
        child: Text(
          // AppLocal.skip.tr,
          'تخطي',
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: AppColor.kPrimaryColor,
              ),
        ),
        onPressed: () {
          Get.offAll(SingInScreen());
        },
      ),
    );
  }
}

class _SlidingDots extends StatelessWidget {
  const _SlidingDots({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GetBuilder<OnBordingControllerImp>(
          builder: (controller) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  dashONbordingList.length,
                  (index) {
                    return AnimatedContainer(
                      duration: const Duration(
                        milliseconds: 900,
                      ),
                      width: controller.currentPage == index ? 35 : 12,
                      height: 6,
                      margin: const EdgeInsets.all(
                        // theDefaultPadding,

                        2,
                      ),
                      decoration: BoxDecoration(
                          color: AppColor.kPrimaryColor,
                          // shape: BoxShape.circle,
                          borderRadius: BorderRadius.circular(15)),
                    );
                  },
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
