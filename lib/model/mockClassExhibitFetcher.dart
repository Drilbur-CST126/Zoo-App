import 'interfaces/iClassExhibitFetcher.dart';

class MockClassExhibitFetcher extends IClassExhibitFetcher
{
  Map<int, String> _classes;
  Map<int, String> _exhibits;

  MockClassExhibitFetcher([this._classes, this._exhibits])
  {
    if (_classes == null)
    {
      _classes = Map();
    }
    if (_exhibits == null)
    {
      _exhibits = Map();
    }
  }

  @override
  Map<int, String> getClasses() {
    return _classes;
  }

  @override
  Map<int, String> getExhibits() {
    return _exhibits;
  }

  @override
  Future<void> update() {
    return null;
  }
  
}