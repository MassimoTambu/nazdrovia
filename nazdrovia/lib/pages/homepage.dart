import 'package:flutter/material.dart';
import 'package:nazdrovia/router/naz_app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:nazdrovia/shared/utils/utilities.dart';
import 'package:nazdrovia/shared/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              NavBar(),
              PagesTable(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}

class PagesTable extends StatelessWidget {
  // lista di path con categorie
  final List<PageRouteInfo> pageCategories = [
    AchievementsRoute(),
    CreditsRoute(),
    OfficialCocktailsRoute(),
    OtherGamesRoute(),
    PlayersRoute(),
    RulesRoute(),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 100),
      child: SizedBox(
        width: resizeWidth(percValue: 45, context: context, fullUnder: 570),
        child: Table(
          border: TableBorder.all(
              width: 2, color: Theme.of(context).scaffoldBackgroundColor),
          children: [
            TableRow(
              children: [
                PageRow(pageCategories[0], 'Obbiettivi'),
                PageRow(pageCategories[1], 'Crediti'),
              ],
            ),
            TableRow(
              children: [
                PageRow(pageCategories[2], 'Cocktails Ufficiali'),
                PageRow(pageCategories[3], 'Altri giochi'),
              ],
            ),
            TableRow(
              children: [
                PageRow(pageCategories[4], 'Giocatori'),
                PageRow(pageCategories[5], 'Regole'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PageRow extends StatelessWidget {
  final PageRouteInfo page;
  final String title;

  const PageRow(this.page, this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      height: resizeHeight(percValue: 22, context: context),
      color: Theme.of(context).backgroundColor,
      child: InkWell(
        onTap: () => navigateToPath(context, page),
        child: LayoutBuilder(
          builder: (BuildContext ctx, BoxConstraints cons) => Text(
            title,
            style: TextStyle(
              fontSize: cons.maxHeight / 8,
            ),
          ),
        ),
      ),
    );
  }

  void navigateToPath(BuildContext context, PageRouteInfo page) {
    context.router.push(page);
  }
}

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 300,
      color: Theme.of(context).backgroundColor,
    );
  }
}
