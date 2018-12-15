import 'package:flutter/material.dart';
import "./page/chart.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            primaryColorDark: Color(0xFFc20000),
            primaryColorLight: Color(0xFFFF5d37),
            primaryColor: Color(0xFFFF1001),
            textTheme: TextTheme(body1: TextStyle(color: Colors.white))),
        home: ChartPage());
  }
}
