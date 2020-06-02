abstract class IClassExhibitFetcher
{
  Map<int, String> getExhibits();
  Map<int, String> getClasses();
  Future<void> update();
}