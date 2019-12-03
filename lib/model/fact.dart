// File created by Jordan Clark

// This class is a simple Plain-Old-Data object designed to mirror the database representation of facts.
class Fact
{
  int factId;
  int animalId;
  String fact;

  Fact(this.factId, this.animalId, this.fact);
}