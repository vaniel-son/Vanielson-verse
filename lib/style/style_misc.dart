import 'package:flutter/material.dart';

/// ***********************************************************************
/// Borders
/// ***********************************************************************

borderRadius1() {
  return const BorderRadius.only(
    topLeft: Radius.circular(6),
    topRight: Radius.circular(6),
    bottomLeft: Radius.circular(6),
    bottomRight: Radius.circular(6),
  );
}

// Dynamically create spacing based on screen real estate size
verticalRiser({context, int multiplier = 1}) {
  double increment = 0.015 * multiplier;
  return SizedBox(height: (MediaQuery.of(context).size.height * increment).roundToDouble());
}