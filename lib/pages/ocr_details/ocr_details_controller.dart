import 'dart:io';

import 'package:firebase_ml_vision/firebase_ml_vision.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class OCRDetailsController extends GetxController {
  final picker = ImagePicker();
  var text = "";

  File image;

  bool file_loaded;

  @override
  void onInit() {
    super.onInit();

    if (Get.arguments != null) {
      image = Get.arguments['image'];
      file_loaded = Get.arguments['file_loaded'];
    }
  }

  Future<void> OCRImage() async {
    FirebaseVisionImage visionImage = FirebaseVisionImage.fromFile(image);
    TextRecognizer textRecognizer = FirebaseVision.instance.textRecognizer();
    VisionText visionText = await textRecognizer.processImage(visionImage);

    for (TextBlock block in visionText.blocks) {
      for (TextLine line in block.lines) {
        for (TextElement word in line.elements) {
          //setState(() {
          text = text + word.text + ' ';
          //});
        }
        text = text + '\n';
      }
    }
    textRecognizer.close();

    update();
    //text = "dupa";
  }
}
