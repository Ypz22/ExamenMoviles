import 'package:flutter/material.dart';

class InputTree extends StatelessWidget {
  final String label;
  final Function(String) onChanged;
  final TextEditingController? controller;

  const InputTree({
    super.key,
    required this.label,
    required this.onChanged,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
        keyboardType: TextInputType.number,
        onChanged: onChanged,
      ),
    );
  }
}
