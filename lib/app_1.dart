import 'package:flutter/material.dart';

class App_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            title: new Text("Input text"), backgroundColor: Color(0xFF54B5F6)),
        body: Container(
            child: Center(
                child: Column(
          children: <Widget>[
            TextField(
              decoration: new InputDecoration(hintText: "Type in here!"),
            ),
            Text("Hola"),
            Text("Hola mundo"),
            Text("Hola"),
            Text("Hola"),
            Text("Hola"),
            Text("Hola"),
            TextField(
              decoration: new InputDecoration(hintText: "Type in here!"),
            ),
            Text("Hola"),
          ],
        ))));
  }
}
