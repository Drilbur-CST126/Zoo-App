import 'package:flutter/material.dart';
import 'package:zoo_app/Clicker.dart';
import 'package:zoo_app/DrawerItem.dart';
import 'package:zoo_app/MissingPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final drawerItems = [
    new DrawerItem("Home", Icons.home),
    new DrawerItem("Animals", Icons.image),
    new DrawerItem("Map", Icons.map),
  ];

  final String title;

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
        return new MissingPage();
        break;
      case 2:
        return new MissingPage();
        break;
      default:
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
      appBar: AppBar(
        title: Text(widget.title),
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
