import 'package:exemplo_basico_mvc/shared/utils/util_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.onPressed,
    this.text,
    this.widgetTitle,
  });

  final Function() onPressed;
  final String? text;
  final Widget? widgetTitle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: UtilColors.colorPaleta4,
        padding: const EdgeInsets.all(10),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        minimumSize: Size(Get.size.width, 50),
      ),
      onPressed: onPressed,
      child: widgetTitle ??
          Text(
            text ?? 'Continuar',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
    );
  }
}
