// File created by Jordan Clark

// This class is a simple Plain-Old-Data object designed to mirror the database representation of the animal.
// TODO: Add Class, Origin, and Exhibit(?)
class Animal
{
  int animalId;
  String commonName;
  String scientificName;
  String tags;

  Animal(this.animalId, this.commonName, this.scientificName, [this.tags]);
}