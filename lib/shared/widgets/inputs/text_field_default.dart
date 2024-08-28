import 'package:exemplo_basico_mvc/shared/utils/util_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldDefault extends StatelessWidget {
  const TextFieldDefault({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.inputFormatters,
    this.obscureText,
    this.validator,
    this.keyboardType,
  });

  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final bool? obscureText;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: TextFormField(
        onChanged: onChanged,
        inputFormatters: inputFormatters,
        keyboardType: keyboardType,
        obscureText: obscureText ?? false,
        maxLength: 14,
        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        validator: validator,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          fillColor: Colors.white,
          filled: true,
          counterText: '',
          hintText: hintText,
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: UtilColors.colorPaleta3.withOpacity(.3),
            ),
          ),
        ),
      ),
    );
  }
}
