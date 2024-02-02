import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.textInputType = TextInputType.text,
    this.suffixIcon,
    required this.isObscure,
    required this.hint,
    required this.onChanged,
  });

  final bool isObscure;
  final String hint;
  final TextInputType textInputType;
  final Widget? suffixIcon;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      keyboardType: textInputType,
      obscureText: isObscure,
      decoration: InputDecoration(
        filled: true,
        fillColor: Theme.of(context).colorScheme.background,
        hintText: hint,
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
        suffixIcon: suffixIcon,
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}
