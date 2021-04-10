import 'package:get/get.dart';
import 'pick_image_controller.dart';

class PickImageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PickImageController>(() => PickImageController());

  }
}
