import 'package:get/get.dart';
import '../pages/home/home_binding.dart';
import '../pages/ocr_details/ocr_details_binding.dart';
import '../pages/pick_image/pick_image_page.dart';
import '../pages/pick_image/pick_image_binding.dart';
import '../pages/ocr_details/ocr_details_page.dart';
import '../pages/home/home_page.dart';
import '../routes/app_routes.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.PICK_IMAGE,
      page: () => PickImagePage(),
      binding: PickImageBinding(),
    ),
    GetPage(
      name: AppRoutes.OCR_DETAILS,
      page: () => OCRDetailsPage(),
      binding: OCRDetailsBinding(),
    )
  ];
}

