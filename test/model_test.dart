

import 'package:test/test.dart';
import 'package:zoo_app/model/animal.dart';
import 'package:zoo_app/model/interfaces/iAnimalFetcher.dart';
import 'package:zoo_app/model/mockAnimalFetcher.dart';

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

main()
{
  testMockAnimalFetcher();
}