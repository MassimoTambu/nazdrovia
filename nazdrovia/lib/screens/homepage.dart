import 'package:flutter/material.dart';
import 'package:nazdrovia/shared/models/models.dart';
import 'package:nazdrovia/shared/utilities/utilities.dart';
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
              children: [PageRow(pages[1].title), PageRow(pages[2].title)],
            ),
            TableRow(
              children: [PageRow(pages[3].title), PageRow(pages[4].title)],
            ),
            TableRow(
              children: [PageRow(pages[5].title), PageRow(pages[6].title)],
            ),
          ],
        ),
      ),
    );
  }
}

class PageRow extends StatelessWidget {
  const PageRow(this.routeName);

  final String routeName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      height: resizeHeight(percValue: 22, context: context),
      color: Theme.of(context).backgroundColor,
      child: LayoutBuilder(
        builder: (BuildContext ctx, BoxConstraints cons) => Text(
          routeName,
          style: TextStyle(
            fontSize: cons.maxHeight / 8,
          ),
        ),
      ),
    );
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
