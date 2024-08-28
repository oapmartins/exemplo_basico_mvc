import 'package:exemplo_basico_mvc/shared/utils/util_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
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
        backgroundColor: Colors.white,
        padding: const EdgeInsets.all(10),
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: UtilColors.colorPaleta5, width: 2),
          borderRadius: BorderRadius.circular(16),
        ),
        minimumSize: Size(Get.size.width, 50),
      ),
      onPressed: onPressed,
      child: widgetTitle ??
          Text(
            text ?? 'Continuar',
            style: TextStyle(
              color: UtilColors.colorPaleta5,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
    );
  }
}
