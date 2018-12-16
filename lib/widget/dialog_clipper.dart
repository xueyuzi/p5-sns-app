import "package:flutter/material.dart";

class DialogonalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();
    // path.lineTo(0.0, 0.0);
    // path.lineTo(0.0, size.height);
    path.moveTo(18, 18);
    path.lineTo(0.0, size.height-10);
    path.lineTo(size.width-10, size.height);
    path.lineTo(size.width, 0.0);
    // path.moveTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
