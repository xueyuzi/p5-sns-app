import "package:flutter/material.dart";
import "dart:math";

class AvatarBox extends StatelessWidget {
  final String image;
  const AvatarBox({this.image});
  @override
  Widget build(BuildContext context) {
    Random random = Random();
    int randomNum = random.nextInt(10) * (random.nextInt(10) > 5 ? 1 : -1);
    // TODO: implement build
    return RotationTransition(
        turns: AlwaysStoppedAnimation(randomNum / 360),
        child: Container(
          width: 70,
          child: Image.asset(image),
        ));
  }
}
