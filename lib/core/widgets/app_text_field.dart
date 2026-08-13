import 'package:flutter/material.dart';

/// Standard text field used across all forms. Supports [forceLtr] for the
/// handful of fields (phone numbers, EMIS codes, numeric stats) that must
/// stay left-to-right regardless of the active app locale/direction.
class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.label,
    this.controller,
    this.initialValue,
    this.onChanged,
    this.validator,
    this.keyboardType,
    this.maxLines = 1,
    this.forceLtr = false,
    this.enabled = true,
    this.suffixText,
    this.prefixIcon,
    this.hintText,
    this.autovalidateMode,
    this.obscureText = false,
  });

  final String label;
  final TextEditingController? controller;
  final String? initialValue;
  final ValueChanged<String>? onChanged;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final int maxLines;
  final bool forceLtr;
  final bool enabled;
  final String? suffixText;
  final IconData? prefixIcon;
  final String? hintText;
  final AutovalidateMode? autovalidateMode;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    final Widget field = TextFormField(
      controller: controller,
      initialValue: controller == null ? initialValue : null,
      onChanged: onChanged,
      validator: validator,
      keyboardType: keyboardType,
      maxLines: obscureText ? 1 : maxLines,
      obscureText: obscureText,
      enabled: enabled,
      autovalidateMode: autovalidateMode,
      textDirection: forceLtr ? TextDirection.ltr : null,
      textAlign: forceLtr ? TextAlign.left : TextAlign.start,
      decoration: InputDecoration(
        labelText: label,
        hintText: hintText,
        suffixText: suffixText,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
      ),
    );
    return field;
  }
}
