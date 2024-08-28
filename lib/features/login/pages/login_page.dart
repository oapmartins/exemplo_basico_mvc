import 'package:exemplo_basico_mvc/core/utils/constants/images_constants.dart';
import 'package:exemplo_basico_mvc/features/login/controllers/login_controller.dart';
import 'package:exemplo_basico_mvc/shared/utils/util_colors.dart';
import 'package:exemplo_basico_mvc/shared/widgets/buttons/primary_button.dart';
import 'package:exemplo_basico_mvc/shared/widgets/buttons/secondary_button.dart';
import 'package:exemplo_basico_mvc/shared/widgets/inputs/text_field_default.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool showPassword = false.obs;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                UtilColors.colorPaleta3,
                Colors.white,
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Form(
              key: controller.formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.network(
                    ImagesConstants.logo,
                    width: 200,
                  ),
                  const SizedBox(height: 50),
                  TextFieldDefault(
                    hintText: 'CPF',
                    prefixIcon: const Icon(FontAwesomeIcons.solidUser, size: 16),
                    onChanged: controller.onCPFChanged,
                    inputFormatters: [controller.maskFormatterCPF],
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 15),
                  TextFieldDefault(
                    hintText: 'Senha',
                    prefixIcon: const Icon(FontAwesomeIcons.lock, size: 16),
                    onChanged: controller.onPasswordChanged,
                    obscureText: !showPassword.value,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        showPassword.toggle();
                      },
                      child: Icon(
                        size: 18,
                        showPassword.value ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  PrimaryButton(
                    onPressed: controller.login,
                    text: 'Login',
                  ),
                  const SizedBox(height: 10),
                  SecondaryButton(
                    onPressed: controller.cadastro,
                    text: 'Cadastro',
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: controller.forgotPassword,
                    child: Text(
                      'Esqueci minha senha',
                      style: TextStyle(fontSize: 14, color: UtilColors.colorPaleta5),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
