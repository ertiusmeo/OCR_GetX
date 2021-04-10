import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'ocr_details_controller.dart';
import '../../routes/app_routes.dart';



class OCRDetailsPage extends GetView<OCRDetailsController>{


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 100.0),
          controller.file_loaded
              ? Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(blurRadius: 20),
                  ],
                ),
                margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                height: 250,
                child: Image.file(
                  controller.image,
                  fit: BoxFit.cover,
                ),
              ))
              : Container(),
          //SizedBox(height: 10.0),
          FlatButton(
            color: Colors.blue,
            child: Icon(Icons.save_outlined),
              onPressed: () {
                Get.toNamed(
                  AppRoutes.HOME,
                  arguments: {'image': controller.image, 'ocr_text': controller.text},
                );
              }
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: GetBuilder<OCRDetailsController>(
                  //init: controller,
                  initState: (_)=> controller.OCRImage(),
                  // You can initialize your controller here the first time. Don't use init in your other GetBuilders of same controller
                  // GetX/Obx is reactive (streams) while GetBuilder only rebuilds on update()
                  builder: (s) => Text(
                      'OCR Text: ${s.text}'
                  ),
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }



}
