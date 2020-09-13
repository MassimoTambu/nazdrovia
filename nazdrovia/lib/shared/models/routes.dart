class Route {
  final String route;
  final String name;

  const Route(this.route, this.name);
}

List<Route> routes = [
  Route('/rules', 'Regole'),
  Route('/achievements', 'Obbiettivi'),
  Route('/players', 'Giocatori'),
  Route('/official-cocktails', 'Cocktails Ufficiali'),
  Route('/credits', 'Crediti'),
  Route('/other-games', 'Altri Giochi'),
];
