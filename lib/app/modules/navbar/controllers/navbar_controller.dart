import 'package:get/get.dart';

class NavbarController extends GetxController {
  //TODO: Implement NavbarController

  var selectedindex = 0.obs;
  var community = false.obs;
  void changeIndex(int index) {
    selectedindex.value = index;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => selectedindex.value++;
}
