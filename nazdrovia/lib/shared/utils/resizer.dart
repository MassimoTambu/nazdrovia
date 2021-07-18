import 'package:flutter/material.dart';

double resizeWidth({
  required double percValue,
  required BuildContext context,
  double? fullUnder,
}) {
  final mqWidth = MediaQuery.of(context).size.width;
  final res = mqWidth * percValue / 100;
  if (fullUnder != null && res <= fullUnder) return mqWidth;
  return res;
}

double resizeHeight(
    {required double percValue, required BuildContext context}) {
  return MediaQuery.of(context).size.height * percValue / 100;
}
