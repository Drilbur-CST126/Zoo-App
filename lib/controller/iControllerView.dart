// File created by Jordan Clark

// This is an interface for the View classes to refer to the Controller with.
// This should only contain the classes the View will call, the View should not know the implementation details of the Controller
abstract class IControllerView
{
  goToAnimalPage(dynamic context, int animalId);
}