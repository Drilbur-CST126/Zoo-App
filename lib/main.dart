import 'package:flutter/material.dart';
import 'package:zoo_app/Clicker.dart';
import 'package:zoo_app/DrawerItem.dart';
import 'package:zoo_app/MissingPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:zoo_app/model/fact.dart';

import 'controller/controller.dart';
import 'model/animal.dart';
import 'model/model.dart';
import 'view/app.dart';

// MyApp factored out into view/app.dart, done by Jordan Clark
void main() {
  // This new main creates the model, controller and view of our Model-View-Controller design pattern.

  // TODO: Replace with the non-mock model, once the database can be connected to.
  var model = Model.mockModel([
    Animal(1, "African Bullfrog", "Pyxicephalus Adspersus"),
    Animal(2, "African Crested Porcupine", "Hystix Cristata"),
    Animal(3, "African Lungfish", "Protopterus Annectens"),
    Animal(4, "African Painted Dog", "Lycaon Pictus"),
    Animal(5, "African Red-Billed Hornbill", "Tockus Erythro"),
    Animal(6, "African Rock Python", "Python Sebae"),
    Animal(7, "African Slender-Snouted Crocodile", "Mecistops Cataphractus"),
    Animal(8, "African Spurred Tortoise", "Centrochelys Sulcata"),
    Animal(9, "Allen's Swmap Monkey", "Allenopithecus Nigroviridis"),
    Animal(10, "American Beaver", "Castor Canadensis"),
    Animal(11, "Test Animal", "Animal test")
  ],
      [
        Fact(1, 1, "Bullfrogs' fingers are short and blunt, without webbing."),
        Fact(2, 1, "Its large mouth allows it to eat reptiles."),
        Fact(3, 1,
            "In the front of its lower jaw are three large, toothlike projections."),
        Fact(4, 1, "It vocalizes with loud bellows and roars."),
        Fact(5, 1,
            "It may sit quietly for hours partially buried in the earth with only its nose exposed"),
        Fact(6, 1,
            "African bullfrongs hibernate during the dry season, spending 10 months underground."),
        Fact(7, 1,
            "Frogs breed when they emerge from hibernation with the return of rains."),
        Fact(8, 1,
            "The female lays between 3,000 and 4,000 eggs in shallow water."),
        Fact(9, 1, "Tadpoles emerge the second day after eggs are laid."),
        Fact(10, 1, "The young may be smooth-skinned."),
        Fact(11, 1, "Male: 9 inches"),
        Fact(12, 1, "Female: 4 inches"),
        Fact(13, 1, "Lifespan: up to 45 years"),
        Fact(14, 2, "It is called the Kijani, which is Swahili for \"Green.\""),
        Fact(15, 2,
            "The African crested porcupine is the largest porcupine in the world. It lives in hilly, rocky habitats in sub-Saharan Africa, North Africa and Italy."),
        Fact(16, 2,
            "The sharp, sturdy quills of the African crested porcupine give it highly effective protection against predators. Its body is covered with coarse quills 1 to 13 inches long and of varying thicknesses. Its most heavily armed area is its hindquarters, which have short, thick quills."),
        Fact(17, 2,
            "When it is confronted by a predator, the African crested porcupine raises the 12- to 13-inch quills along its head and back into a crest so its body appears larger and more threatening. If this strategy doesn't chase off the predator, the porcupine stamps its feet, clicks its teeth, and rattles its hollow-tipped tail quills. If this fails, it runs backwards and rams the attacker with the short, thick quills on its backside. The tips of its quills lodge in its enemy's skin, and the resulting wounds can disable or even kill the predator. Porcupines have been known to injure lions, leopards, hyenas, even humans."),
        Fact(18, 2,
            "African crested porcupines eat tubers, bark, bulbs, fallen fruit and cultivated root crops. They are nocturnal and forage alone at night, traveling up to 9 miles in their search for food. They return to the den and rest during the day. Though they forage alone, they live in small family groups made up of an adult pair and their young, both infants and juveniles. They develop elaborate burrows to house this family group."),
        Fact(19, 2,
            "African crested porcupines are monogamous. Mating is a thorny challenge because of the spines and quills of the two participants. Females usually have one litter per year after a pregnancy lasting about 112 days. One to 4 offspring, called \"porcupettes,\" are born in a separate grass-lined birth chamber within the burrow system. The porcupettes are born with open eyes and developed teeth, though the quills on their backs are soft. They leave the den about a week later, just as their quills begin to harden."),
        Fact(20, 2,
            "African crested porcupines are 24 to 36 inches long, not counting their 3 to 6 ½ inch tail. They weigh between 22 and 66 pounds. They live about 20 years, both in the wild and in captivity."),
        Fact(21, 2,
            "African crested porcupines are not endangered, but because they eat cultivated crops they are seen as agricultural pests. Farmers use dogs to hunt them or smoke them out of their burrows; in some areas, farmers illegally use poison to kill them. They are also killed for their quills, which are used as ornaments and talismans. In North Africa they are killed and sold to be used in traditional medicine."),
        Fact(22, 3,
            "African lungfish live in freshwater swamps, backwaters and small rivers in West and South Africa. These prehistoric animals have survived unchanged for nearly 400 million years and are sometimes referred to as \"living fossils.\""),
        Fact(23, 3,
            "African lungfish have some fascinating adaptations. They have two lungs, and can breathe air. This is a vital feature, since they live in flood plains in waterways that often dry up. To manage this life-threatening situation, the lungfish secretes a thin layer of mucus around itself that dries into a cocoon. It can live out of water in this cocoon for up to a year, breathing through its lungs until rains refill its waterway."),
        Fact(24, 3,
            "The African lungfish also hibernates in water. It digs 1-9 inches into the soil and debris at the bottom of its waterway, then wiggles in the mud to create a bulb-shaped chamber and rests there with its nose pointing upward. Its metabolic rate slows down, and the nutrients it needs to survive come from breakdown of its muscle tissue. It can remain up to 4 years in this state."),
        Fact(25, 3,
            "African Lungfish can use their thin hind limbs to lift themselves off the bottom surface and propel themselves forward. This is probably possible because they can fill their lungs with air, adding to the buoyancy of their bodies in water. Scientists believe that lungfish may be closely related to the animals that were able to evolve and come of the water and onto land."),
        Fact(26, 3,
            "African lungfish are omnivorous, eating a varied diet that includes frogs, fish and mollusks as well as tree roots and seeds. They grow between 6 ½ and 40 inches long, and can weigh up to nearly 8 pounds."),
        Fact(27, 3,
            "The female African lungfish lays its eggs in a nest in a weedy area of its habitat. Once the eggs hatch, the males guard the young for up to two months. The larvae have external gills that are reabsorbed during their metamorphosis into fully developed lungfish. As the African lungfish develops from juvenile to adult, its teeth fuse together to form tooth plates, which are used to chew its food."),
      ]);
  var controller = Controller(model);
  var zooApp = ZooApp(controller);
  runApp(zooApp);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
MyHomePage({Key key, this.title}) : super(key: key);
  final drawerItems = [
    new DrawerItem("Home", Icons.home),
    new DrawerItem("Animals", Icons.image),
    new DrawerItem("Map", Icons.map),
  ];

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos){
    switch(pos){
      case 0:
        return new Clicker();
        break;
      case 1:
        return new MissingPage();
        break;
      case 2:
        return new MissingPage();
        break;
      default:
        break;
    }
  }

  _onSelectItem(int index){
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    var drawerOptions = <Widget>[];
    for (var i = 0; i < widget.drawerItems.length; i++) {
        var d = widget.drawerItems[i];
        drawerOptions.add(
          new ListTile(
            leading: new Icon(d.icon),
            title: new Text(d.title),
            selected: i == _selectedDrawerIndex,
            onTap: () => _onSelectItem(i),
          )
        );
      }
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new Column(children: drawerOptions)
          ],
        )
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}
