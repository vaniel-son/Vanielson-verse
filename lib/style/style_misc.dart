import 'package:flutter/material.dart';

/// ***********************************************************************
/// Borders
/// ***********************************************************************

borderRadius1() {
  return const BorderRadius.only(
    topLeft: Radius.circular(16),
    topRight: Radius.circular(16),
    bottomLeft: Radius.circular(16),
    bottomRight: Radius.circular(16),
  );
}

// Dynamically create spacing based on screen real estate size
verticalRiser({context, double multiplier = 1}) {
  double increment = 0.015 * multiplier;
  return SizedBox(height: (MediaQuery.of(context).size.height * increment).roundToDouble());
}