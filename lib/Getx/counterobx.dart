import 'package:get/get.dart';

class MyCounterobx extends GetxController {
  var count = 0.obs;
  RxInt age = 0.obs;
  void iincrements() {
    count++;
  }
}
