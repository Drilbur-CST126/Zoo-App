import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MissingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Missing Page')
      ),
      body: Center(
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('This page has not been created yet'),
            
          ],
        )
      )
    );
  }
}