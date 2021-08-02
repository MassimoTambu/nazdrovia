import 'package:flutter/material.dart';
import 'package:nazdrovia/router/naz_app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:nazdrovia/ui/widgets/widgets.dart';
import 'package:nazdrovia/utils/helpers/resizer_helper.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const NavBar(),
              const PagesTable(),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}

class PagesTable extends StatelessWidget {
  const PagesTable();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 100),
      child: SizedBox(
        width: ResizerHelper.resizeWidth(
            percValue: 45, context: context, fullUnder: 570),
        child: Table(
          border: TableBorder.all(
              width: 2, color: Theme.of(context).scaffoldBackgroundColor),
          children: [
            TableRow(
              children: [
                PageRow(AchievementsRoute(), 'Obbiettivi'),
                PageRow(CreditsRoute(), 'Crediti'),
              ],
            ),
            TableRow(
              children: [
                PageRow(OfficialCocktailsRoute(), 'Cocktails Ufficiali'),
                PageRow(OtherGamesRoute(), 'Altri giochi'),
              ],
            ),
            TableRow(
              children: [
                PageRow(PlayersRoute(), 'Giocatori'),
                PageRow(RulesRoute(), 'Regole'),
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
      height: ResizerHelper.resizeHeight(percValue: 22, context: context),
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
