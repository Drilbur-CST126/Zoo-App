// File created by Jordan Clark

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoo_app/controller/iControllerView.dart';
import 'package:zoo_app/model/animal.dart';

class AnimalPage extends StatefulWidget
{
  final String title;
  final Animal defaultAnimal;
  final IControllerView controller;

  AnimalPage({Key key, this.title, this.defaultAnimal, @required this.controller}) : super(key: key);

  @override
  _AnimalPageState createState() {
    return _AnimalPageState(defaultAnimal);
  }
}

class _AnimalPageState extends State<AnimalPage>
{
  Animal animal;
  _AnimalPageState(this.animal);

  Widget _animalExists(BuildContext context)
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

  Widget _animalDoesNotExist(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("404 Error"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Uh oh! This animal is not in our databases.")
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return animal != null ? _animalExists(context) : _animalDoesNotExist(context);
  }
}