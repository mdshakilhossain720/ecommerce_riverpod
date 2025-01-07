import 'package:flutter/material.dart';

class ChipWidgets extends StatelessWidget {
  const ChipWidgets({
    super.key,
    required this.label,
  });
  final String label;

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
    );
  }
}
