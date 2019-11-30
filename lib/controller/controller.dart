// File created by Jordan Clark

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoo_app/controller/iControllerView.dart';
import 'package:zoo_app/model/model.dart';
import 'package:zoo_app/view/animalPage.dart';

class Controller implements IControllerView
{
  final Model model;

  Controller(this.model);

  @override
  goToAnimalPage(dynamic context, int animalId) {
    Navigator.push(context, 
      MaterialPageRoute(builder: (context) => 
        AnimalPage(title: "Animal Page", defaultAnimal: model.animalFetcher.getAnimalById(animalId), controller: this,)
       )
    );
  }
}