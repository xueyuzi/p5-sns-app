import "package:flutter/material.dart";

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("title"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("home")),
          BottomNavigationBarItem(icon: Icon(Icons.info), title: Text("info")),
        ],
      ),
    );
  }
}
class MyContainerAndSingleChildScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 100.0,
      height: 100.0,
      child: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text("A"),
          ),
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text("A"),
          ),
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text("A"),
          ),
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text("A"),
          ),
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text("A"),
          ),
        ],
      )),
      decoration: BoxDecoration(border: Border.all(width: 2.0)),
    );
  }
}
