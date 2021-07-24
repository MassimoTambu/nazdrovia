import 'package:flutter/material.dart';

extension ThemeContext on BuildContext {
  ThemeData theme() {
    return Theme.of(this);
  }
}
