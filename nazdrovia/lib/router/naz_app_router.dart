import 'package:auto_route/auto_route.dart';
import 'package:nazdrovia/ui/pages/pages.dart';

// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: AchievementsPage),
    AutoRoute(page: CreditsPage),
    AutoRoute(page: NotFoundPage),
    AutoRoute(page: OfficialCocktailsPage),
    AutoRoute(page: OtherGamesPage),
    AutoRoute(page: PlayersPage),
    AutoRoute(page: RulesPage),
  ],
)
class $AppRouter {}
