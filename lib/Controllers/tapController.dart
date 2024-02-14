import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class TapController extends GetxController {
  //variables
  RxInt _x = 0.obs;
  RxInt get x => _x;

  void increment() {
    _x.value++;
  }

  void decrement() {
    _x.value--;
  }
}
