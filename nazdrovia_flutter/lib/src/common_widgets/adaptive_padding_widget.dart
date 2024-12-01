import 'package:flutter/material.dart';

const double adaptivePaddingPercentage = 25;

class AdaptivePaddingWidget extends StatelessWidget {
  const AdaptivePaddingWidget({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal:
            MediaQuery.of(context).size.width * adaptivePaddingPercentage / 100,
      ),
      child: child,
    );
  }
}
