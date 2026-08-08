import 'package:flutter/material.dart';

extension WidgetExtensions on Widget {
  Widget get expanded => Expanded(child: this);
  Widget get flexible => Flexible(child: this);

  Padding paddingAll(double value) =>
      Padding(padding: EdgeInsets.all(value), child: this);

  Padding paddingHorizontal(double value) => Padding(
    padding: EdgeInsets.symmetric(horizontal: value),
    child: this,
  );

  Padding paddingVertical(double value) => Padding(
    padding: EdgeInsets.symmetric(vertical: value),
    child: this,
  );

  Padding paddingHorizontalVertical(double h, double v) => Padding(
    padding: EdgeInsets.symmetric(horizontal: h, vertical: v),
    child: this,
  );

  Padding paddingFromLTRB(double l, double t, double r, double b) =>
      Padding(padding: EdgeInsetsGeometry.fromLTRB(l, t, r, b));

  Widget onTap(VoidCallback onTap) =>
      GestureDetector(onTap: onTap, child: this);
}
