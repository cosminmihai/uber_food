import 'package:flutter/material.dart';
import 'package:uber_food/presentation/theme/index.dart';

class UberText extends StatelessWidget {
  const UberText.headingOne(this.text) : style = heading1Style;

  const UberText.headingTwo(this.text) : style = heading2Style;

  const UberText.headingThree(this.text) : style = heading3Style;

  const UberText.headline(this.text) : style = headlineStyle;

  const UberText.subheading(this.text) : style = subheadingStyle;

  const UberText.caption(this.text) : style = captionStyle;

  UberText.body(this.text, {Color color = kMediumGrey}) : style = bodyStyle.copyWith(color: color);

  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: style);
  }
}
