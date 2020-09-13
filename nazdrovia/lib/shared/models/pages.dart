import 'package:flutter/material.dart';
import 'package:nazdrovia/shared/models/routes.dart';

class Pages {
  String title;
  String route;
  bool mainPage;

  Pages({@required this.title, @required this.route, this.mainPage});
}

final List<Pages> pages = [
  Pages(title: 'Nazdrovia', route: Routes.HOME, mainPage: true),
  Pages(title: 'Regole', route: Routes.RULES),
  Pages(title: 'Obbiettivi', route: Routes.ACHIEVEMENTS),
  Pages(title: 'Giocatori', route: Routes.PLAYERS),
  Pages(title: 'Cocktails Ufficiali', route: Routes.OFFICIALCOCKTAILS),
  Pages(title: 'Crediti', route: Routes.CREDITS),
  Pages(title: 'Altri giochi', route: Routes.OTHERGAMES),
];
