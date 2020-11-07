import 'package:flutter/material.dart';
import 'package:nazdrovia/router/naz_route_path.dart';

class RouteAppState extends ChangeNotifier {
  NazRoutePath _selectedPath;

  RouteAppState() : _selectedPath = HomePath();

  NazRoutePath get selectedPath => _selectedPath;

  set selectedPath(NazRoutePath path) {
    _selectedPath = path;
    notifyListeners();
  }
}
