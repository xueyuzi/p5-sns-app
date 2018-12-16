import "package:flutter/material.dart";
import "package:flutter_app/template/base.dart";
import "package:flutter_app/widget/avatar_box.dart";
import "package:flutter_app/widget/dialog_clipper.dart";

class ChartPage extends StatelessWidget {
  final List<Chart> chartList = [
    Chart(avatar: "assets/images/cart_red.png", chartText: "很抱歉在这个时候打扰各位"),
    Chart(avatar: "assets/images/cart_red.png", chartText: "好正经！"),
    Chart(avatar: "assets/images/cart_red.png", chartText: "真有礼貌"),
    Chart(avatar: "assets/images/cart_red.png", chartText: "但感觉不够亲近耶"),
    Chart(avatar: "assets/images/cart_red.png", chartText: "但感觉不够亲近耶"),
    Chart(avatar: "assets/images/cart_red.png", chartText: "但感觉不够亲近耶"),
    Chart(avatar: "assets/images/cart_red.png", chartText: "但感觉不够亲近耶"),
    Chart(avatar: "assets/images/cart_red.png", chartText: "但感觉不够亲近耶"),
    Chart(avatar: "assets/images/cart_red.png", chartText: "但感觉不够亲近耶"),
  ];
  final double topHeight = 100;
  Widget _buildAvatarList() {
    return Container(
      margin: EdgeInsets.fromLTRB(50, 70, 0, 0),
      child: Row(
        children: <Widget>[
          AvatarBox(
            image: "assets/images/avatar_cat.jpg",
          ),
          AvatarBox(
            image: "assets/images/avatar_hime.jpg",
          ),
          AvatarBox(
            image: "assets/images/avatar_doctor.jpg",
          ),
          AvatarBox(
            image: "assets/images/avatar_trger.jpg",
          ),
        ],
      ),
    );
  }

  Widget _buildChartDialog(String text) {
    return ClipPath(
      clipper: DialogonalClipper(),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: Text(text),
      ),
    );
  }

  Widget _buildChartRow(Chart chart) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 30),
        child: Row(
          children: <Widget>[
            Container(
              width: 100,
              child: Image.asset(chart.avatar),
            ),
            _buildChartDialog(chart.chartText)
          ],
        ));
  }

  Widget _buildChartList() {
    return ListView(children: [
      Container(
        margin: EdgeInsets.only(top: topHeight),
        child: Column(
          children: chartList.map((chart) => _buildChartRow(chart)).toList(),
        ),
      )
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return BaseTemplate(
        child: Stack(
      children: <Widget>[
        _buildChartList(),
        _buildAvatarList(),
      ],
    ));
  }
}

class Chart {
  String avatar;
  String chartText;
  Chart({this.avatar, this.chartText});
}
