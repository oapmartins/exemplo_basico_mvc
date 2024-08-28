import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class LoginController extends GetxController {
  final RxBool isLoading = false.obs;
  final RxString cpf = ''.obs;
  final RxString password = ''.obs;

  final formKey = GlobalKey<FormState>();

  var maskFormatterCPF = MaskTextInputFormatter(
    mask: '###.###.###-##',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  void onCPFChanged(String value) {
    cpf.value = maskFormatterCPF.unmaskText(value);
  }

  void onPasswordChanged(String value) {
    password.value = value;
  }

  void login() async {}

  void cadastro() async {}

  void forgotPassword() {}
}
