import 'package:exemplo_basico_mvc/features/login/bindings/login_bindings.dart';
import 'package:exemplo_basico_mvc/features/login/pages/login_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

// ignore_for_file: constant_identifier_names

class LoginRouters {
  static const LOGIN = '/login';
}

class LoginPageRouters {
  LoginPageRouters._();

  static final routers = <GetPage>[
    GetPage(
      name: LoginRouters.LOGIN,
      page: () => const LoginPage(),
      binding: LoginBindings(),
    ),
  ];
}
