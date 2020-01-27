// File created by Jordan Clark

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoo_app/controller/iControllerView.dart';
import 'package:zoo_app/model/animal.dart';
import 'package:zoo_app/model/fact.dart';
import 'package:zoo_app/model/model.dart';
import 'package:zoo_app/view/animalPage.dart';

// The main controller in our Model-View-Controller design pattern.
// This class will have methods called by the View and will get information from the Model.
// This class will render the View, aside from calling runApp, which is still in main.dart.
class Controller implements IControllerView
{
  final Model model;

  Controller(this.model);

  // This function will display an AnimalPage for an animal of a provided animalId.
  @override
  goToAnimalPage(dynamic context, int animalId) {
    // Navigator.push is the function for navigating to a new page such that the back button will take the user back to the previous page.
    Navigator.push(context, 
      MaterialPageRoute(builder: (context) => 
        AnimalPage(animal: model.animalFetcher.getAnimalById(animalId), controller: this,)
       )
    );
  }

  @override
  List<Fact> getAllFactsForAnimal(int animalId) {
    return model.animalFetcher.getAnimalById(animalId).facts;
  }

  @override
  Iterable<Animal> getAllAnimals({bool Function(Animal) where}) {
    return model.animalFetcher.getAllAnimals(where: where);
  }

  Iterable<Animal> searchAnimals(String searchTerm) {
    return model.animalFetcher.searchAnimals(searchTerm);
  }

  @override
  Future<bool> updateAnimals() async {
    try {
      await model.animalFetcher.update();
      return true;
    } catch (e) {
      return false;
    }
  }
}