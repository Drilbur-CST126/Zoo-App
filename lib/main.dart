import 'package:flutter/material.dart';
import 'package:zoo_app/AnimalList/AnimalListHead.dart';
import 'package:zoo_app/Clicker.dart';
import 'package:zoo_app/DrawerItem.dart';
import 'package:zoo_app/MissingPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:zoo_app/model/dbAnimalFetcher.dart';
import 'package:zoo_app/model/fact.dart';
import 'package:zoo_app/model/mockFactFetcher.dart';

import 'controller/controller.dart';
import 'controller/iControllerView.dart';
import 'model/animal.dart';
import 'model/model.dart';
import 'view/app.dart';

// MyApp factored out into view/app.dart, done by Jordan Clark
void main() async {
  // This new main creates the model, controller and view of our Model-View-Controller design pattern.

  // TODO: Replace with the non-mock model, once the database can be connected to.
  var model = Model(DbAnimalFetcher(), MockFactFetcher());
  var controller = Controller(model);
  var zooApp = MyApp(controller);
  runApp(zooApp);
}

class MyApp extends StatelessWidget {
  final IControllerView controller;
  final Key scaffoldKey;

  MyApp(this.controller, {this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page', controller: controller, scaffoldKey: scaffoldKey,),
    );
  }
}

class MyHomePage extends StatefulWidget {
MyHomePage({Key key, this.scaffoldKey, this.title, @required this.controller}) : super(key: key);
  final drawerItems = [
    new DrawerItem("Home", Icons.home),
    new DrawerItem("Animals", Icons.image),
    new DrawerItem("Selector", Icons.book),
  ];

  final String title;
  final Key scaffoldKey;
  final IControllerView controller;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos){
    switch(pos){
      case 0:
        return new Clicker();
        break;
      case 1:
        return new AnimalListPage(controller: widget.controller);
        break;
      case 2:
        return new AnimalListHead();
        break;
      default:
        return new MissingPage();
        break;
    }
  }

  _onSelectItem(int index){
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    var drawerOptions = <Widget>[];
    for (var i = 0; i < widget.drawerItems.length; i++) {
        var d = widget.drawerItems[i];
        drawerOptions.add(
          new ListTile(
            leading: new Icon(d.icon),
            title: new Text(d.title),
            selected: i == _selectedDrawerIndex,
            onTap: () => _onSelectItem(i),
          )
        );
      }
    return Scaffold(
      key: widget.scaffoldKey,
      appBar: AppBar(
        title: Text(widget.drawerItems[_selectedDrawerIndex].title),
      ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new Column(children: drawerOptions)
          ],
        )
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}
