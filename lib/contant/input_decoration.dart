import 'package:flutter/material.dart';

InputDecoration inputDecoration(String hintText, [bool? bool, Widget? icon]) {
  return InputDecoration(
      contentPadding: const EdgeInsets.only(top: 18),
      hintText: hintText,
      errorStyle: TextStyle(fontSize: 14),
      prefixIcon: icon,
      hintStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Color(0xFFA8A7A7)),
      filled: bool,
      fillColor: const Color(0xFFF5F7FB),
      focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
      errorBorder: OutlineInputBorder(borderSide: BorderSide.none),
      focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide.none),
      border: OutlineInputBorder(borderSide: BorderSide.none));
}
