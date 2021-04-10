import 'dart:io';

import 'package:get/get.dart';

class OCR_Image {
  File image;
  String ocr_text;

  OCR_Image(File image, String ocr_text);
}

class HomeController extends GetxController {
  File image;
  String ocr_text;

  onInit() {
    super.onInit();

    if (Get.arguments != null) {
      image = Get.arguments['image'];
      ocr_text = Get.arguments['ocr_text'];
    }
  }
}
