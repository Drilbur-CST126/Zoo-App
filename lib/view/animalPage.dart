// File created by Jordan Clark

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoo_app/controller/iControllerView.dart';
import 'package:zoo_app/model/animal.dart';
import 'package:zoo_app/view/notFoundErrorPage.dart';

// This page exists to display detailed information on the animals.
// In the event that there is no animal to display, it will build a NotFoundErrorPage instead.
class AnimalPage extends StatelessWidget
{
  final Animal animal;
  final IControllerView controller; // Controller used to call methods to access the view
  // TODO: Remove unless a need for controller is found

  AnimalPage({Key key, this.animal, @required this.controller}) : super(key: key);

  // This is the main animal page. Factored out into a separate method to make the build method cleaner.
  Widget _buildAnimalPage(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text(animal.commonName),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(animal.scientificName)
          ],
        ),
      ),
    );
  }

  // This defines what is built, either displaying the animal page or an error page based on whether it was given an animal or not.
  @override
  Widget build(BuildContext context) {
    return animal != null ? _buildAnimalPage(context) : NotFoundErrorPage();
  }
}