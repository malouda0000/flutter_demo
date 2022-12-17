import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/core/constants/app_colors.dart';
import 'package:flutter_demo/core/shared/title_builder.dart';
import 'package:flutter_demo/view/screens/home/home_screen.dart';
import 'package:get/get.dart';

abstract class BottomNavBarController extends GetxController {
  changeBody(RxInt i);
}

class BottomNavBarControllerImp extends BottomNavBarController {
  // late PageController pageController;
  // TabController bottNavTapCont = 0;
  RxInt currentBody = 2.obs;
  List<Widget> bodyWidgestsList = const [
    tempPage(
      theTitle: 'tab 1',
    ),
    tempPage(
      theTitle: 'tab 2',
    ),
    HomeScreenBody(),
    tempPage(
      theTitle: 'tab 3',
    ),
    tempPage(
      theTitle: 'tab 4',
    ),
  ];

  @override
  void changeBody(RxInt i) {
    currentBody = i;
    update();
  }

  @override
  void onInit() {
    // pageController = PageController();
    super.onInit();
  }
}

class tempPage extends StatelessWidget {
  final String theTitle;
  const tempPage({
    Key? key,
    required this.theTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TitleBuilder(
        theTitle: theTitle,
        isBold: true,
        textColor: AppColor.kPrimaryColor,
      ),
    );
  }
}

class MyTempWidget extends StatelessWidget {
  final String theTitle;
  const MyTempWidget({super.key, required this.theTitle});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(theTitle),
    );
  }
}
