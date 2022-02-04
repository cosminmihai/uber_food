import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:uber_food/presentation/theme/index.dart';

final ThemeData appTheme = ThemeData(
  textTheme: Typography.material2018(platform: defaultTargetPlatform).black,
  scaffoldBackgroundColor: kGhostWhite,
  colorScheme: const ColorScheme.light(
    primary: kPrimaryColor,
    secondary: kSecondaryColor,
  ),
  dividerTheme: const DividerThemeData(thickness: 1.0, space: 0.0),
);
