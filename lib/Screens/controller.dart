import 'package:flutter/widgets.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class BottomDrawerContentController extends GetxController {
  TextEditingController textEditingController = TextEditingController();
  RxString searchQuery = ''.obs;

  void setSearchQuery(String value) {
    searchQuery.value = value;
  }

  @override
  void onClose() {
    textEditingController.dispose();
    super.onClose();
  }
}
