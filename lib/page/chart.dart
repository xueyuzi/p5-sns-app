import "package:flutter/material.dart";
import "package:flutter_app/template/base.dart";

class ChartPage extends StatelessWidget {
  final List<Chart> chartList = [
    Chart(avatar: "http://placehold.it/85x60", chartText: "很抱歉在这个时候打扰各位"),
    Chart(avatar: "http://placehold.it/85x60", chartText: "好正经！"),
    Chart(avatar: "http://placehold.it/85x60", chartText: "真有礼貌"),
    Chart(avatar: "http://placehold.it/85x60", chartText: "但感觉不够亲近耶"),
    Chart(avatar: "http://placehold.it/85x60", chartText: "但感觉不够亲近耶"),
    Chart(avatar: "http://placehold.it/85x60", chartText: "但感觉不够亲近耶"),
    Chart(avatar: "http://placehold.it/85x60", chartText: "但感觉不够亲近耶"),
    Chart(avatar: "http://placehold.it/85x60", chartText: "但感觉不够亲近耶"),
    Chart(avatar: "http://placehold.it/85x60", chartText: "但感觉不够亲近耶"),
  ];
  Widget _buildAvatarList() {
    return Container(
      margin: EdgeInsets.fromLTRB(50, 70, 0, 0),
      child: Row(
        children: <Widget>[
          Image.network("http://placehold.it/70x70"),
          Image.network("http://placehold.it/70x70"),
          Image.network("http://placehold.it/70x70"),
          Image.network("http://placehold.it/70x70"),
          Image.network("http://placehold.it/70x70"),
        ],
      ),
    );
  }

  Widget _buildChartRow(Chart chart) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 30),
        child: Row(
          children: <Widget>[
            Container(
              child: Image.network(chart.avatar),
            ),
            Text(chart.chartText)
          ],
        ));
  }

  Widget _buildChartList() {
    return ListView(
      children: chartList.map((chart) => _buildChartRow(chart)).toList(),
    );
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
