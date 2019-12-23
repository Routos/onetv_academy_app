import 'package:flutter/material.dart';

class CustomShapeClipper extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    Path pathLine = Path();
    pathLine.lineTo(0, size.height-70);
    var controllerPoint = Offset(50,size.height);
    var endPoint = Offset(size.width / 2,size.height);
    pathLine.quadraticBezierTo(controllerPoint.dx, controllerPoint.dy, endPoint.dx, endPoint.dy);
    pathLine.lineTo(size.width, size.height);
    pathLine.lineTo(size.width, 0);
    pathLine.close();
    return pathLine;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}