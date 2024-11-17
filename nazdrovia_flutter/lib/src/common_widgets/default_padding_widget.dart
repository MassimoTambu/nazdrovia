import 'package:flutter/material.dart';

const double defaultPaddingOffset = 16;

class DefaultPaddingWidget extends StatelessWidget {
  const DefaultPaddingWidget(
      {super.key, required this.child, this.allSides = false});

  final Widget child;
  final bool allSides;

  @override
  Widget build(BuildContext context) => Padding(
        padding: allSides
            ? const EdgeInsets.all(defaultPaddingOffset)
            : const EdgeInsets.symmetric(horizontal: defaultPaddingOffset),
        child: child,
      );
}
