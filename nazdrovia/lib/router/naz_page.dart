import 'package:flutter/material.dart';

class NazPage extends Page {
  final Widget child;

  const NazPage(this.child);

  @override
  Route createRoute(BuildContext context) {
    return PageRouteBuilder(
      settings: this,
      pageBuilder: (context, animation, secondaryAnimation) {
        //TODO implementa animazione di pagina
        return child;
      },
    );
  }
}
