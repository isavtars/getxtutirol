import 'package:get/get.dart';

class CountController extends GetxController {
  int _count = 0;

  int get counts => _count;

  void iincrements() {
    _count++;
    update();
  }
}
