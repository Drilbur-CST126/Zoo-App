// File created by Jordan Clark

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoo_app/HomePage.dart';
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
    //return Theme.of(context).textTheme.body2;
    return TextStyle(
      color: Colors.purple[700],
      decoration: TextDecoration.none,
    );
  }

  // This gets all of the animal facts into an array of Text objects
  List<Widget> _getAnimalFacts(BuildContext context)
  {
    var facts = controller.getAllFactsForAnimal(animal.animalId);
    var factsText = new List<Widget>();
    if (facts.length == 0){
      factsText.add(
          Padding(child: Text("No Facts Found", style: _getTextStyle(context),), padding: EdgeInsets.all(20))
      );
    }
    else{
      facts.forEach((fact) => factsText.add(
          Padding(child: Text("- " + fact.fact, style: _getTextStyle(context),), padding: EdgeInsets.all(20))
      ));
    }
    return factsText;
  }

  Container _buildImageCarasoul(){
    if(animal.pictureURL.length == 0){
      return(
      Container(child: Text("No Images Found"), padding: EdgeInsets.all(5),)
      );
    }

    return Container(
      height: 400,
      child: Carousel(
        boxFit: BoxFit.fill,
        images: _buildImageList(),
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 2000),
        autoplay: false,
        indicatorBgPadding: 0.25,
        dotSize: .5,
        dotColor: Colors.transparent,
        dotBgColor: Colors.white70,
      ),
    );
  }

  List<Image> _buildImageList(){
    List<Image> images = new List<Image>();
    for (var imageurl in animal.pictureURL){
      images.add(Image.network(imageurl));
    }
    return images;
  }

  // This is the main animal page. Factored out into a separate method to make the build method cleaner.
  Widget _buildAnimalPage(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(animal.commonName),
        actions: <Widget>[FlatButton(child: Icon(Icons.home),onPressed: () => {
          Navigator.popUntil(context,
              ModalRoute.withName(Navigator.defaultRouteName))
        }),],
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Text("Scientific name", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Text(animal.scientificName, style: _getTextStyle(context)),
            Text("\nAnimal Facts", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Column(children: _getAnimalFacts(context)),
            _buildImageCarasoul(),
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