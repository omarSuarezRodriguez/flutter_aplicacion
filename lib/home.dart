import 'package:flutter/material.dart';
import 'gallery.dart';
import 'import.dart';
import 'export.dart';
import 'profile.dart';
import 'logout.dart';
import 'app_1.dart';
import 'app_2.dart';

class Home extends StatefulWidget {
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int _selectDrawerItem = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return Import();
      case 1:
        return Gallery();
      case 2:
        return Export();
      case 3:
        return Profile();
      case 4:
        return Logout();
      case 5:
        return App_1();
      case 6:
        return App_2();
    }
  }

  _onSelectItem(int pos) {
    Navigator.of(context).pop();
    setState(() {
      _selectDrawerItem = pos;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Drawer'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Omar Suarez'),
              accountEmail: Text('omar.suarez.rod@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('O', style: TextStyle(fontSize: 40.0)),
              ),
            ),
            ListTile(
              title: Text('Import'),
              leading: Icon(Icons.camera_alt),
              selected: (0 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(0);
              },
            ),
            ListTile(
              title: Text('Gallery'),
              leading: Icon(Icons.photo_library),
              selected: (1 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(1);
              },
            ),
            ListTile(
              title: Text('Export'),
              leading: Icon(Icons.save),
              selected: (2 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(2);
              },
            ),
            Divider(),
            ListTile(
              title: Text('Profile'),
              leading: Icon(Icons.account_circle),
              selected: (3 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(3);
              },
            ),
            ListTile(
              title: Text('Logout'),
              leading: Icon(Icons.exit_to_app),
              selected: (4 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(4);
              },
            ),
            ListTile(
              title: Text('App 1'),
              leading: Icon(Icons.exit_to_app),
              selected: (5 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(5);
              },
            ),
            ListTile(
              title: Text('App 2'),
              leading: Icon(Icons.exit_to_app),
              selected: (6 == _selectDrawerItem),
              onTap: () {
                _onSelectItem(6);
              },
            ),
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectDrawerItem),
    );
  }
}
