import 'package:flutter/material.dart';
import 'package:nazdrovia/router/naz_router_delegate.dart';
import 'package:nazdrovia/shared/models/models.dart';
import 'package:nazdrovia/shared/utilities/utilities.dart';
import 'package:nazdrovia/shared/widgets/widgets.dart';
import 'package:provider/provider.dart';

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
              children: [PageRow(pages[1]), PageRow(pages[2])],
            ),
            TableRow(
              children: [PageRow(pages[3]), PageRow(pages[4])],
            ),
            TableRow(
              children: [PageRow(pages[5]), PageRow(pages[6])],
            ),
          ],
        ),
      ),
    );
  }
}

class PageRow extends StatelessWidget {
  final NazDataPage page;

  const PageRow(this.page);

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
            page.title,
            style: TextStyle(
              fontSize: cons.maxHeight / 8,
            ),
          ),
        ),
      ),
    );
  }

  void navigateToPath(BuildContext context, NazDataPage page) {
    Provider.of<NazRouterDelegate>(context, listen: false)
        .navigateToPath(context, page);
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
