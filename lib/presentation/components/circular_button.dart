import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  const CircularButton({Key key, this.width, this.height, this.color, this.onClick, this.icon}) : super(key: key);

  final double width;
  final double height;
  final Color color;
  final Function onClick;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      width: width,
      height: height,
      child: IconButton(
        icon: icon,
        onPressed: onClick,
        enableFeedback: true,
      ),
    );
  }
}
