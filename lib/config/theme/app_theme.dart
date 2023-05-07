// ignore_for_file: empty_constructor_bodies

import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF5C11D4);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;

  AppTheme({required this.selectedColor})
      : assert(
            (selectedColor >= 0) &&
                (selectedColor <= (_colorThemes.length - 1)),
            'Colors must be 0 and ${_colorThemes.length}, you choosed $selectedColor');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
    );
  }
}
