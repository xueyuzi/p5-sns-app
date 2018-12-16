import "package:flutter/material.dart";
import "package:flutter_statusbarcolor/flutter_statusbarcolor.dart";

class BaseTemplate extends StatelessWidget {
  final Widget child;
  BaseTemplate({this.child});

  Widget _buildTopLogo() {
    return RotationTransition(
        // logo对其左上角
        alignment: Alignment(0.5, 1),
        // 逆时针旋转15度
        turns: AlwaysStoppedAnimation(-15 / 360),
        child: Container(
            child: Image.asset(
          "assets/images/logo.png",
          height: 100,
        ))
        // child: Image.network("http://placehold.it/150x100"),
        );
  }

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.black);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          child,
          _buildTopLogo(),
        ],
      ),
      backgroundColor: Theme.of(context).primaryColor,
    );
  }
}
