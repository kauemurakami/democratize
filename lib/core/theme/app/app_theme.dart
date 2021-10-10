import 'package:flutter/material.dart';

abstract class CustomTheme {
  static getTheme(ctx) {
    return ThemeData(
        fontFamily: 'Cairo',
        // scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(ctx).textTheme.apply(displayColor: Colors.black));
  }
}
