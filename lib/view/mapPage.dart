import 'package:flutter/cupertino.dart';
import 'package:zoo_app/zoomableImage.dart';
import 'loadingWidget.dart';

class MapPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return ZoomableImage(new AssetImage("assets/ZooMap.png"), placeholder: LoadingWidget());
  }
}