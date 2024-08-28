import 'package:exemplo_basico_mvc/core/router/login_routers.dart';
import 'package:exemplo_basico_mvc/core/router/splash_routers.dart';
import 'package:exemplo_basico_mvc/core/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: SplashRouters.SPLASH,
      getPages: [
        ...LoginPageRouters.routers,
        ...SplashPageRouters.routers,
      ],
      theme: ThemeDefault.themeData,
    );
  }
}
