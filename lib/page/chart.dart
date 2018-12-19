import "package:flutter/material.dart";
import "package:flutter_app/template/base.dart";
import "package:flutter_app/widget/avatar_box.dart";
import "package:flutter_app/widget/dialog_clipper.dart";

class ChartPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ChartPage();
  }
}

class _ChartPage extends State<ChartPage> {
  final double topHeight = 100.0;
  final double inputHeight = 45.0;
  final List<Chart> chartList = [
    Chart(
        avatar: "assets/images/cart_red.png",
        chartText: "很抱歉在这个时候打扰各位",
        chartDirection: Direction.Left),
    Chart(
        avatar: "assets/images/cart_red.png",
        chartText: "好正经！",
        chartDirection: Direction.Left),
    Chart(
        avatar: "assets/images/cart_red.png",
        chartText: "真有礼貌",
        chartDirection: Direction.Left),
    Chart(
        avatar: "assets/images/cart_red.png",
        chartText: "但感觉不够亲近耶",
        chartDirection: Direction.Left),
  ];
  void addChart(String text) {
    setState(() {
      chartList.add(
        Chart(chartText: text, chartDirection: Direction.Right),
      );
    });
  }

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
          mainAxisAlignment: chart.chartDirection == Direction.Left
              ? MainAxisAlignment.start
              : MainAxisAlignment.end,
          children: <Widget>[
            chart.chartDirection == Direction.Left
                ? Container(
                    width: 100,
                    child: Image.asset(chart.avatar),
                  )
                : Text(""),
            _buildChartDialog(chart.chartText)
          ],
        ));
  }

  Widget _buildChartList() {
    return ListView(children: [
      Container(
        margin: EdgeInsets.only(top: topHeight, bottom: inputHeight),
        child: Column(
          children: chartList.map((chart) => _buildChartRow(chart)).toList(),
        ),
      )
    ]);
  }

  Widget _buildChartInput() {
    final formkey = GlobalKey<FormState>();
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
              height: inputHeight,
              margin: EdgeInsets.fromLTRB(10, 0, 10, 5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black, width: 2)),
              child: Form(
                key: formkey,
                child: TextFormField(
                  onSaved: (val) {
                    debugPrint(val);
                    addChart(val);
                  },
                  enableInteractiveSelection: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      icon: Icon(Icons.send, color: Colors.black),
                      onPressed: () {
                        debugPrint("send");
                        final form = formkey.currentState;
                        if (form.validate()) {
                          form.save();
                        }
                      },
                    ),
                  ),
                ),
              ))
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return BaseTemplate(
        child: Stack(
      children: <Widget>[
        _buildChartList(),
        _buildAvatarList(),
        _buildChartInput()
      ],
    ));
  }
}

enum Direction { Right, Left }

class Chart {
  String avatar;
  String chartText;
  Direction chartDirection;
  Chart({this.avatar, this.chartText, this.chartDirection});
}
