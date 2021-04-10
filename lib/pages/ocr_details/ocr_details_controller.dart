import 'package:get/get.dart';
import 'dart:io';
import 'package:firebase_ml_vision/firebase_ml_vision.dart';
import 'package:image_picker/image_picker.dart';

class OCRDetailsController extends GetxController {


  final picker = ImagePicker();
  var text="";

  final File image = Get.arguments['image'];
  final bool file_loaded = Get.arguments['file_loaded'];


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
