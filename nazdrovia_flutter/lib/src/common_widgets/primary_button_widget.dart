import 'package:flutter/material.dart';

class PrimaryButtonWidget extends StatelessWidget {
  const PrimaryButtonWidget({
    super.key,
    required this.text,
    this.icon,
    required this.onPressed,
  });

  final String text;
  final Widget? icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    if (icon == null) {
      return FilledButton(
        onPressed: onPressed,
        child: Text(text),
      );
    }

    return FilledButton.icon(
      onPressed: onPressed,
      icon: icon!,
      label: Text(text),
    );
  }
}
