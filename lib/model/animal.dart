// File created by Jordan Clark

// This class is a simple Plain-Old-Data object designed to mirror the database representation of the animal.
class Animal
{
  int animalId;
  String commonName;
  String scientificName;
  String tags;
  int classid;
  int exhibitid;
  List<String> pictureURL;

  Animal(this.animalId, this.commonName, this.scientificName, this.classid, this.exhibitid, [this.tags = "", this.pictureURL])
  {
    if (pictureURL == null)
    {
      pictureURL = List<String>();
    }
  }
}