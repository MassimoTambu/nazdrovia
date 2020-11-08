import 'package:flutter/material.dart';
import 'package:nazdrovia/router/naz_route_path.dart';

class NazDataPage {
  String title;
  NazRoutePath path;
  bool mainPage;

  NazDataPage({@required this.title, @required this.path, this.mainPage});
}

final List<NazDataPage> pages = [
  NazDataPage(title: 'Nazdrovia', path: HomePath(), mainPage: true),
  NazDataPage(title: 'Regole', path: RulesPath()),
  NazDataPage(title: 'Obbiettivi', path: AchievementsPath()),
  NazDataPage(title: 'Giocatori', path: PlayersPath()),
  NazDataPage(title: 'Cocktails Ufficiali', path: OfficialCocktailsPath()),
  NazDataPage(title: 'Crediti', path: CreditsPath()),
  NazDataPage(title: 'Altri giochi', path: OtherGamesPath()),
];
