// File created by Jordan Clark

import 'package:flutter/material.dart';

// This page will display a simple error page.
// It should stand in for any page that is accessed improperly, such as an AnimalPage without an animal.
class NotFoundErrorPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Error"),
      ),
      body: Column(
        children: <Widget>[
          Text("Our search has gone cold on this one, try another page!"),
          Image(image: AssetImage("assets/penguin_lost.png"),),
          Text("If this problem persists, please contact an administrator."),
        ],
      ),
    );
  }
  
}