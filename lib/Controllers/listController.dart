import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class ListController extends GetxController {
  RxList _list = [].obs;

  RxList get list => _list;

  void setValues(int x) {
    _list.add(x);
    print(_list);
  }
}
