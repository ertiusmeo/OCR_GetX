import 'package:get/get.dart';
import 'ocr_details_controller.dart';

class OCRDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OCRDetailsController>(() => OCRDetailsController());
  }
}
