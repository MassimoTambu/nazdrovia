import 'package:flutter/material.dart';

class SecondaryButtonWidget extends StatelessWidget {
  const SecondaryButtonWidget({
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
      return ElevatedButton(
        onPressed: onPressed,
        child: Text(text),
      );
    }

    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: icon!,
      label: Text(text),
    );
  }
}
