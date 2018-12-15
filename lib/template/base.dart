import "package:flutter/material.dart";
import "package:flutter_statusbarcolor/flutter_statusbarcolor.dart";

class BaseTemplate extends StatelessWidget {
  final Widget child;
  BaseTemplate({this.child});

  Widget _buildTopLogo() {
    return Container(
      child: Image.network("http://placehold.it/150x100"),
    );
  }

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Theme.of(context).primaryColor);
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
