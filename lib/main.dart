import 'package:flutter/cupertino.dart';

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
    Animal(1, "Dog", "Canis lupus familiaris"),
  ]);
  var controller = Controller(model);
  var zooApp = ZooApp(controller);
  runApp(zooApp);
}

