import 'package:flutter/material.dart';
import 'package:nazdrovia/shared/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          NavBar(),
          PagesTable(),
          Footer(),
        ],
      ),
    );
  }
}

class PagesTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [TableRow()],
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
