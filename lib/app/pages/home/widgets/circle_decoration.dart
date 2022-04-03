import 'package:flutter/material.dart';

class CircleDecoration extends StatelessWidget {
  final Color color;
  final double width;
  final double height;
  final double top;
  final double left;

  const CircleDecoration(
      {this.color, this.width, this.height, this.top, this.left});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(height / 2),
        ),
      ),
    );
  }
}
