import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import './routes/app_pages.dart';
import './routes/app_routes.dart';
import 'themes/app_themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Getx App",
      initialRoute: AppRoutes.HOME,
      getPages: AppPages.list,
      debugShowCheckedModeBanner: false,
      darkTheme: AppThemes.dark,
      theme: AppThemes.light,
      themeMode: ThemeMode.system,
    );
  }
}

