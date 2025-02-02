import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String? validatorMessage;
  final TextInputType keyboardType;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.label,
    this.validatorMessage,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      // onSaved: (newValue) {
      //   controller.text = newValue ?? '';
      // },
      keyboardType: keyboardType,
      decoration: InputDecoration(labelText: label),
      validator: validatorMessage != null
          ? (value) => value == null || value.isEmpty ? validatorMessage : null
          : null,
    );
  }
}
