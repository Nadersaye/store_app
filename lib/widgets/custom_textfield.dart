import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      required this.keyboardType,
      this.onchange,
      this.hideText = false,
      required this.hintText});
  final Function(String)? onchange;
  final TextInputType keyboardType;
  bool? hideText;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onchange,
      decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
      obscureText: hideText!,
      keyboardType: keyboardType,
    );
  }
}
