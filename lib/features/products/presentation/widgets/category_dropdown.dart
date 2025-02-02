import 'package:flutter/material.dart';

class CategoryDropdown extends StatelessWidget {
  final List<String> categories;
  final TextEditingController controller;
  final String? validatorMessage;

  const CategoryDropdown({
    super.key,
    required this.categories,
    required this.controller,
    this.validatorMessage,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: categories.contains(controller.text) ? controller.text : null,
      decoration: const InputDecoration(labelText: 'Select Category'),
      items: categories
          .map(
            (category) =>
                DropdownMenuItem(value: category, child: Text(category)),
          )
          .toList(),
      onChanged: (value) {
        if (value != null) {
          controller.text = value;
        }
      },
      validator: (validatorMessage != null)
          ? (value) {
              return value == null ? validatorMessage : null;
            }
          : null,
    );
  }
}
