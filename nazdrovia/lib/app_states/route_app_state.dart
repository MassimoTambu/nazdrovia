import 'package:flutter/material.dart';
import 'package:nazdrovia/router/naz_route_path.dart';

class RouteAppState extends ChangeNotifier {
  NazPath? _selectedPath;

  RouteAppState() {
    _selectedPath = HomePath();
  }

  NazPath? get selectedPath => _selectedPath;

  set selectedPath(NazPath? path) {
    _selectedPath = path;
    notifyListeners();
  }
}
