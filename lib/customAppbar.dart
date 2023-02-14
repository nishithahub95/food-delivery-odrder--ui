import 'package:flutter/material.dart';

class customAppbar extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip

    double height=size.height;
    double width=size.width;

    var path=Path();
    path.lineTo(0, height-90);
    path.quadraticBezierTo(width/2, height, width, height-90);
    path.lineTo(width, 0);
    path.close();
    return path;

    throw UnimplementedError();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
    //throw UnimplementedError();
  }
  
}