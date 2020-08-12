import 'package:flutter/material.dart';

class ProfileClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 4 * size.height / 6);
    Offset curvPoint = Offset(size.width / 2, size.height * 0.9);
    Offset endPoint = Offset(size.width, 4 * size.height / 6);
    path.quadraticBezierTo(
        curvPoint.dx, curvPoint.dy, endPoint.dx, endPoint.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
