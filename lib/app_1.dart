import 'package:flutter/material.dart';

class App_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            title: new Text("Input text"), backgroundColor: Color(0xFF54B5F6)),
        body: new Container(
            child: new Center(
                child: new Column(
          children: <Widget>[
            new TextField(
              decoration: new InputDecoration(hintText: "Type in here!"),
            ),
            new Text("Hola"),
            new Text("Hola mundo"),
            new TextField(
              decoration: new InputDecoration(hintText: "Type in here!"),
            ),
          ],
        ))));
  }
}
