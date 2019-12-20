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

  AnimalPage({Key key, this.animal, @required this.controller}) : super(key: key);

  // This function gets the text style for the page, it's factored out into a function in the interest of DRY code
  TextStyle _getTextStyle(BuildContext context)
  {
    return Theme.of(context).textTheme.body2;
  }

  // This gets all of the animal facts into an array of Text objects, using the 'sync*' and 'yield'
  // From my understanding, having a function that is 'sync*' means it returns a list, and 'yield' adds an element to said list.
  // It avoids creating and returning an extra list data member, not sure if the syntax is the best or not though.
  List<Widget> _getAnimalFacts(BuildContext context)
  {
    var facts = controller.getAllFactsForAnimal(animal.animalId);
    var factsText = new List<Widget>();
    facts.forEach((fact) => factsText.add(
      Padding(child: Text("- " + fact.fact, style: _getTextStyle(context),), padding: EdgeInsets.all(20))
    ));
    return factsText;
  }

  // This is the main animal page. Factored out into a separate method to make the build method cleaner.
  Widget _buildAnimalPage(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text(animal.commonName),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Text(animal.scientificName, style: _getTextStyle(context),),
            Column(children: _getAnimalFacts(context)),
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