import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final double? heigth;
  final double? width;
  final TextEditingController? value;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool obscureText;
  final double borderRadius;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final ValueChanged<String>? onChanged;

  const CustomTextField({
    Key? key,
    this.hintText,
    this.labelText,
    this.heigth,
    this.width,
    this.suffixIcon,
    this.value,
    this.prefixIcon,
    this.obscureText = false,
    this.borderRadius = 8.0,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heigth ?? 60,
      width: width ?? context.width(),
      child: Focus(
        child: TextField(
          controller: value,
          obscureText: obscureText,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: hintText,
            labelText: labelText,
            suffix: suffixIcon != null ? Icon(suffixIcon) : null,
            prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide(color: Colors.blue),
            ),
          ),
        ),
      ),
    );
  }
}
