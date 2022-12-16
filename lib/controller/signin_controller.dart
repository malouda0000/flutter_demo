import 'package:get/get.dart';

abstract class SigninController extends GetxController {
  onFocuesd(int index);
  editingCompleted(int index);
  changeFillColor(String? value, int index);
}

class SigninControllerImp extends SigninController {
  List<bool> isItActivList = [
    false,
    false,
    false,
    false,
  ];

  bool isActive = false;

  @override
  onFocuesd(int index) {
    // isActive = true;
    isItActivList[index] = true;
    update();
  }

  editingCompleted(int index) {
    isItActivList[index] = false;
    update();
  }

  @override
  changeFillColor(String? value, int index) {
    if (value == '') {
      isItActivList[index] = false;
      update();
    } else {
      isItActivList[index] = true;
      update();
    }
  }
}