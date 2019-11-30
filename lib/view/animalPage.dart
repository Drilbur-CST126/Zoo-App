// File created by Jordan Clark

import 'package:flutter/cupertino.dart';
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

  @override
  Widget build(BuildContext context) {
    return null;
  }
}