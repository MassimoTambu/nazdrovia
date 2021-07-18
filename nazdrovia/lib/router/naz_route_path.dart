import 'package:nazdrovia/shared/models/routes.dart';

class NazPath {
  final String path = '';
}

class NazPathCategory implements NazPath {
  final String title = 'naz-path-category-title';
  final bool mainPage = false;

  @override
  final String path = '';
}

class NotFoundPath implements NazPath {
  @override
  final path = Routes.NOTFOUND;
}

class HomePath implements NazPathCategory {
  @override
  final String path = Routes.HOME;

  @override
  final bool mainPage = true;

  @override
  final String title = 'Nazdrovia';
}

class AchievementsPath implements NazPathCategory {
  @override
  final path = Routes.ACHIEVEMENTS;

  @override
  final bool mainPage = false;

  @override
  final String title = 'Obbiettivi';
}

class CreditsPath implements NazPathCategory {
  @override
  final path = Routes.CREDITS;

  @override
  final bool mainPage = false;

  @override
  final String title = 'Crediti';
}

class OfficialCocktailsPath implements NazPathCategory {
  @override
  final path = Routes.OFFICIALCOCKTAILS;

  @override
  final bool mainPage = false;

  @override
  final String title = 'Cocktails Ufficiali';
}

class OtherGamesPath implements NazPathCategory {
  @override
  final path = Routes.OTHERGAMES;

  @override
  final bool mainPage = false;

  @override
  final String title = 'Altri giochi';
}

class PlayersPath implements NazPathCategory {
  @override
  final path = Routes.PLAYERS;

  @override
  final bool mainPage = false;

  @override
  final String title = 'Giocatori';
}

class RulesPath implements NazPathCategory {
  @override
  final path = Routes.RULES;

  @override
  final bool mainPage = false;

  @override
  final String title = 'Regole';
}

// lista di path con categorie

final List<NazPathCategory> pageCategories = [
  HomePath(),
  AchievementsPath(),
  CreditsPath(),
  OfficialCocktailsPath(),
  OtherGamesPath(),
  PlayersPath(),
  RulesPath(),
];

class NazPathManager {
  static List<NazPath> _nazPaths = [
    HomePath(),
    AchievementsPath(),
    CreditsPath(),
    OfficialCocktailsPath(),
    OtherGamesPath(),
    PlayersPath(),
    RulesPath(),
    NotFoundPath(),
  ];

  static NazPath findNazPath(NazPath path) {
    return _nazPaths.firstWhere((np) => path.runtimeType == np.runtimeType);
  }
}
