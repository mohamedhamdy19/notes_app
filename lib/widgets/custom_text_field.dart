import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String label;
  final bool obscure;
  final Widget? prefix;
  final Widget? suffix;
  final int maxLines;
  final String? Function(String?)? validator;
  final void Function(String?)? onSubmitted;
  final void Function()? ontap;
  final TextInputType inputType;
  final bool readonly;
  final void Function(String?)? onSaved;
  const CustomTextField({
    super.key,
    this.controller,
    required this.label,
    this.obscure = false,
    this.prefix,
    this.suffix,
    this.validator,
    this.onSaved,
    this.onSubmitted,
    this.ontap,
    this.inputType = TextInputType.text,
    this.readonly = false,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      maxLines: maxLines,
      style: const TextStyle(color: Colors.white),
      readOnly: readonly,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "this field is required";
        } else {
          return null;
        }
      },
      controller: controller,
      obscureText: obscure,
      onFieldSubmitted: onSubmitted,
      keyboardType: inputType,
      onTap: ontap,
      decoration: InputDecoration(
        alignLabelWithHint: true,
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
