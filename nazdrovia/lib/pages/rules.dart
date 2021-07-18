import 'package:flutter/material.dart';

class RulesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _RulesContainers(),
    );
  }
}

class _RulesContainers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      // itemCount: rules.length,
      // itemBuilder: (context, index) {
      //   Widget listTile;
      //   if (index == 0) {
      //     listTile = Column(children: [
      //       _buildRulesIntro(),
      //       _buildRulesCategory(rules[index]);
      //     ],);
      //   } else {
      //     listTile = _buildRulesCategory(rules[index]);
      //   }
      //   return listTile;
      // },
    );
  }

  Widget _buildRulesIntro() {
    return SelectableText.rich(
      TextSpan(children: [
        TextSpan(
          text:
              'Le regole sono state scritte in vari momenti mentre eravamo in gatta, se sono presenti errori di calligrafia o di altro genere ',
        ),
        TextSpan(
          text: 'non rompete il cazzo.',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ]),
    );
  }

  Widget _buildRulesCategory() {}
}

class _RulesCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
