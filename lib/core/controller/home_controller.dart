import 'package:get/get.dart';

abstract class HomeScreenContorller extends GetxController {
  activCatgorey(int index);
}

class HomeScreenContorllerImp extends HomeScreenContorller {
  List<bool> activCatigory = [
    true,
    false,
    false,
  ];

  @override
  activCatgorey(int index) {
    // isActive = true;
    activCatigory[index] = true;
    update();
  }
}
