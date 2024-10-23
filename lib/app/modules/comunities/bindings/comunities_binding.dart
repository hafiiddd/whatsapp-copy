import 'package:get/get.dart';

import '../controllers/comunities_controller.dart';

class ComunitiesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ComunitiesController>(
      () => ComunitiesController(),
    );
  }
}
