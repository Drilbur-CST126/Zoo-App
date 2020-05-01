import 'package:flutter/cupertino.dart';
import 'package:zoomable_image/zoomable_image.dart';

class MapPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return ZoomableImage(new AssetImage("assets/ZooMap.png"));
  }
}