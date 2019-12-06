

import 'package:test/test.dart';
import 'package:zoo_app/model/animal.dart';
import 'package:zoo_app/model/fact.dart';
import 'package:zoo_app/model/interfaces/iAnimalFetcher.dart';
import 'package:zoo_app/model/mockAnimalFetcher.dart';
import 'package:zoo_app/model/mockFactFetcher.dart';

testMockAnimalFetcher()
{
  test("MockAnimalFetcher can add animals", ()
  {
    var fetcher = MockAnimalFetcher();

    fetcher.addAnimal(Animal(0, "Giraffe", "Giraffa camelopardalis"));

    expect(fetcher.animals[0].commonName, "Giraffe");
  });

  test("getAnimalByName can retrieve animals", ()
  {
    var fetcher = MockAnimalFetcher();
    fetcher.addAnimal(Animal(0, "Giraffe", "Giraffa camelopardalis"));
    fetcher.addAnimal(Animal(1, "Dog", "Canis lupus familiaris"));

    var animal = fetcher.getAnimalByName("Dog");

    expect(animal.commonName, "Dog");
  });

  test("getAnimalByName can retrieve animals as an IAnimalFetcher", ()
  {
    var fetcher = MockAnimalFetcher();
    fetcher.addAnimal(Animal(0, "Giraffe", "Giraffa camelopardalis"));
    fetcher.addAnimal(Animal(1, "Dog", "Canis lupus familiaris"));

    IAnimalFetcher ifetcher = fetcher;
    var animal = ifetcher.getAnimalByName("Dog");

    expect(animal.commonName, "Dog");
  });

  test("getAnimalByName will return null for nonexistant animal", ()
  {
    var fetcher = MockAnimalFetcher();
    fetcher.addAnimal(Animal(0, "Giraffe", "Giraffa camelopardalis"));
    fetcher.addAnimal(Animal(1, "Dog", "Canis lupus familiaris"));

    IAnimalFetcher ifetcher = fetcher;
    var animal = ifetcher.getAnimalByName("Cat");

    expect(animal, null);
  });

  test("getAnimalById can retrieve animals", ()
  {
    var fetcher = MockAnimalFetcher();
    fetcher.addAnimal(Animal(0, "Giraffe", "Giraffa camelopardalis"));
    fetcher.addAnimal(Animal(1, "Dog", "Canis lupus familiaris"));

    var animal = fetcher.getAnimalById(1);

    expect(animal.commonName, "Dog");
  });

  test("getAnimalById can retrieve animals as an IAnimalFetcher", ()
  {
    var fetcher = MockAnimalFetcher();
    fetcher.addAnimal(Animal(0, "Giraffe", "Giraffa camelopardalis"));
    fetcher.addAnimal(Animal(1, "Dog", "Canis lupus familiaris"));

    IAnimalFetcher ifetcher = fetcher;
    var animal = ifetcher.getAnimalById(1);

    expect(animal.commonName, "Dog");
  });

  test("getAnimalById will return null for nonexistant animal", ()
  {
    var fetcher = MockAnimalFetcher();
    fetcher.addAnimal(Animal(0, "Giraffe", "Giraffa camelopardalis"));
    fetcher.addAnimal(Animal(1, "Dog", "Canis lupus familiaris"));

    IAnimalFetcher ifetcher = fetcher;
    var animal = ifetcher.getAnimalById(2);

    expect(animal, null);
  });
}

testMockFactFetcher()
{
  test("MockFactFetcher can add facts", ()
  {
    var fetcher = MockFactFetcher();

    fetcher.addFact(Fact(0, 0, "Test Fact 1"));

    expect(fetcher.facts[0].factId, 0);
  });
  test("MockFactFetcher can retreive facts by Id", ()
  {
    var fetcher = MockFactFetcher();
    fetcher.addFact(Fact(0, 0, "Test Fact 1"));
    fetcher.addFact(Fact(1, 0, "Test Fact 2"));

    var fact = fetcher.getFactByFactId(0);

    expect(fact.fact, "Test Fact 1");
  });
  test("MockFactFetcher.getFactByFactId returns null when no fact is found", ()
  {
    var fetcher = MockFactFetcher();
    fetcher.addFact(Fact(0, 0, "Test Fact 1"));
    fetcher.addFact(Fact(1, 0, "Test Fact 2"));

    var fact = fetcher.getFactByFactId(2);

    expect(fact, null);
  });
  test("MockFactFetcher can retrieve a singular fact by animalId", ()
  {
    var fetcher = MockFactFetcher();
    fetcher.addFact(Fact(0, 0, "Test Fact 1"));

    var facts = fetcher.getFactsByAnimalId(0);

    expect(facts.length, 1);
    expect(facts.first.fact, "Test Fact 1");
  });
  test("MockFactFetcher can retrieve a list of facts by animalId", ()
  {
    var fetcher = MockFactFetcher();
    fetcher.addFact(Fact(0, 0, "Test Fact 1"));
    fetcher.addFact(Fact(1, 0, "Test Fact 2"));

    var facts = fetcher.getFactsByAnimalId(0);

    expect(facts.length, 2);
    expect(facts.first.fact, "Test Fact 1");
    expect(facts.elementAt(1).fact, "Test Fact 2");
  });
  test("MockFactFetcher.getFactsByAnimalId returns an empty list for a nonexistant animal", ()
  {
    var fetcher = MockFactFetcher();
    fetcher.addFact(Fact(0, 0, "Test Fact 1"));
    fetcher.addFact(Fact(1, 0, "Test Fact 2"));

    var facts = fetcher.getFactsByAnimalId(1);

    expect(facts.length, 0);
  });
}

main()
{
  testMockAnimalFetcher();
  testMockFactFetcher();
}