import 'package:flutter/cupertino.dart';
import 'package:zoo_app/model/fact.dart';

import 'controller/controller.dart';
import 'model/animal.dart';
import 'model/model.dart';
import 'view/app.dart';

// MyApp factored out into view/app.dart, done by Jordan Clark
void main()
{
  // This new main creates the model, controller and view of our Model-View-Controller design pattern.

  // TODO: Replace with the non-mock model, once the database can be connected to.
  var model = Model.mockModel([
    Animal(0, "Giraffe", "Giraffa camelopardalis"),
    Animal(1, "Emperor Penguin", "Aptenodytes forsteri"),
    Animal(2, "Test Animal", "Animal test")
  ],
  [
    Fact(0, 0, "Giraffes are the tallest mammals on Earth. Their legs alone are taller than many humans—about 6 feet."),
    Fact(1, 0,   "They can run as fast as 35 miles an hour over short distances, or cruise at 10 mph over longer distances."),
    Fact(2, 0, "A giraffe's neck is too short to reach the ground. As a result, it has to awkwardly spread its front legs or kneel to reach the ground for a drink of water."),
    Fact(3, 1, "The emperor penguin is the largest of 17 species of penguin at 1.15 m (45 in.) tall."),
    Fact(4, 1, "Emperor penguins are the only animal to inhabit the open ice of Antarctica during the winter."),
    Fact(5, 1, "Emperor penguins face wind chills as cold as -60°C (-76°F) and blizzards of 200 km/h (124 mph)."),
  ]);
  var controller = Controller(model);
  var zooApp = ZooApp(controller);
  runApp(zooApp);
}

