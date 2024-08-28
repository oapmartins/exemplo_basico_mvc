import 'package:exemplo_basico_mvc/features/splash/bindings/splash_bindings.dart';
import 'package:exemplo_basico_mvc/features/splash/pages/splash_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

// ignore_for_file: constant_identifier_names

class SplashRouters {
  static const SPLASH = '/';
}

class SplashPageRouters {
  SplashPageRouters._();

  static final routers = <GetPage>[
    GetPage(
      name: SplashRouters.SPLASH,
      page: () => const SplashPage(),
      binding: SplashBindings(),
    ),
  ];
}
