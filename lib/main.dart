import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:zoo_app/AnimalList/AnimalListHead.dart';
import 'package:zoo_app/DrawerItem.dart';
import 'package:zoo_app/HomePage.dart';
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
import 'package:carousel_pro/carousel_pro.dart';

// an's test branch, test initial commit

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
      title: 'Oregon Zoo Home Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Oregon Zoo', controller: controller, scaffoldKey: scaffoldKey,),

    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.scaffoldKey, this.title, @required this.controller}) : super(key: key);
  final drawerItems = [
    new DrawerItem("Home", Icons.home),
    new DrawerItem("Zoo Map", Icons.map),
    new DrawerItem("Exhibits", Icons.camera_alt),
    new DrawerItem("Search", Icons.folder_open),
    new DrawerItem("Visiting the Zoo", Icons.location_on),
    new DrawerItem("Daily Schedule", Icons.calendar_today),
    new DrawerItem("Tickets", Icons.attach_money),
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
        return new HomePage();
        break;
      case 2:
        return new AnimalListHead();
        break;
      case 3:
        return new AnimalListPage(controller: widget.controller);
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
    Widget image_slider_carousel = Container(
      height: 800,
      child: Carousel(
        boxFit: BoxFit.fill,
        images: [
          AssetImage('assets/elephant.jpg'),
          AssetImage('assets/otter2.jpg'),
          AssetImage('assets/tiger1.jpg'),
          AssetImage('assets/bear.jpg')
        ],
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 2000),
        autoplay: true,
        indicatorBgPadding: 0.25,
        dotSize: .5,
        dotColor: Colors.transparent,
        dotBgColor: Colors.white70,
      ),
    );
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
        backgroundColor: Colors.green,
        title: Text(widget.drawerItems[_selectedDrawerIndex].title),
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
      drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new DrawerHeader(
                child: new Text("AT THE ZOO"),
               decoration: new BoxDecoration(
                      color: Colors.lightGreenAccent,
                      gradient: new LinearGradient(colors: [Colors.green, Colors.cyan])
                ),
              ),
              new Column(children: drawerOptions),
            ],
          )
      ),
    );
  }

}
