import 'package:flutter/material.dart';

class App_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final miControlador = TextEditingController();

    return ListView(
      padding: EdgeInsets.all(20),
      children: <Widget>[
        Text(
          "App 1",
          textAlign: TextAlign.center,
        ),
        TextFormField(
          controller: miControlador,
          decoration: InputDecoration(
            labelText: 'Ingrese el primer número',
          ),
        ),
        Text(miControlador.text),
        RaisedButton(
          onPressed: (){
            showMyDialog(context, miControlador.text);
          },
        ),
      ],
    );
  }

  //Mostrar showDialog
  void showMyDialog(BuildContext context, String texto) {
    showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text(
            texto,
          ),
          actions: <Widget>[
            FlatButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
          ],
        );
      },
    );
  }
}

//Código comentareado:

//TextField Normal:
//
//TextField(
//decoration: InputDecoration(
////            border: InputBorder.none,
//hintText: 'Please enter a search term'),
//),

//TextField con ayuda o TextFormField
//
//TextFormField(
//decoration: InputDecoration(
//labelText: 'Enter your Username',
//),
//),
