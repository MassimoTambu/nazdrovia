import 'package:nazdrovia/shared/models/routes.dart';

abstract class NazRoutePath {
  final _path = '';
  String get path => _path;
}

class NotFoundPath implements NazRoutePath {
  @override
  final _path = Routes.NOTFOUND;

  @override
  get path => _path;
}

class HomePath implements NazRoutePath {
  @override
  final _path = Routes.HOME;

  @override
  get path => _path;
}

class AchievementsPath implements NazRoutePath {
  @override
  final _path = Routes.ACHIEVEMENTS;

  @override
  get path => _path;
}

class CreditsPath implements NazRoutePath {
  @override
  final _path = Routes.CREDITS;

  @override
  get path => _path;
}

class OfficialCocktailsPath implements NazRoutePath {
  @override
  final _path = Routes.OFFICIALCOCKTAILS;

  @override
  get path => _path;
}

class OtherGamesPath implements NazRoutePath {
  @override
  final _path = Routes.OTHERGAMES;

  @override
  get path => _path;
}

class PlayersPath implements NazRoutePath {
  @override
  final _path = Routes.PLAYERS;

  @override
  get path => _path;
}

class RulesPath implements NazRoutePath {
  @override
  final _path = Routes.RULES;

  @override
  get path => _path;
}
