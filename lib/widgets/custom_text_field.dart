import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String label;
  final bool obscure;
  final Widget? prefix;
  final Widget? suffix;
  final String? Function(String?)? validator;
  final void Function(String?)? onSubmitted;
  final void Function()? ontap;
  final TextInputType inputType;
  final bool readonly;

  const CustomTextField({
    super.key,
    this.controller,
    required this.label,
    this.obscure = false,
    this.prefix,
    this.suffix,
    this.validator,
    this.onSubmitted,
    this.ontap,
    this.inputType = TextInputType.text,
    this.readonly = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      readOnly: readonly,
      validator: validator,
      controller: controller,
      obscureText: obscure,
      onFieldSubmitted: onSubmitted,
      keyboardType: inputType,
      onTap: ontap,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(50),
        suffixIcon: suffix,
        prefixIcon: prefix,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(9)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(9),
            borderSide: const BorderSide(color: Colors.white)),
        labelText: label,
      ),
    );
  }
}
