import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:zoo_app/view/loadingWidget.dart';

class MapPage extends StatefulWidget
{
  static const String _assetDirectory = "assets/ZooMap.PDF";

  @override
  State<StatefulWidget> createState() {
    return MapPageState();
  }

}

class MapPageState extends State<MapPage>
{
  String _tempPath = "";

  // Code inspired by https://pspdfkit.com/blog/2019/opening-a-pdf-in-flutter/
  // Without this page, I wouldn't know to move the ZooMap to a temporary directory
  // I also wouldn't know how to do it, since Flutter handles assets bizarrely
  Future<void> openPdfInTempDirectory() async {
    // PDF cannot be loaded directly from assets, it stops being a File at that point,
    // so we need to make a temp file (as far as I know)
    final bytes = await DefaultAssetBundle.of(context).load(MapPage._assetDirectory);
    final list = bytes.buffer.asUint8List();

    final tempDir = await getTemporaryDirectory();
    _tempPath = "${tempDir.path}/${MapPage._assetDirectory}";
    final file = await File(_tempPath).create(recursive: true);
    file.writeAsBytesSync(list);
  }

  Widget _createTempMessage()
  {
    if (_tempPath == "")
    {
      return LoadingWidget();
    }
    else
    {
      return Text("Click back to return to return to the app!");
    }
  }

  @override
  Widget build(BuildContext context) {
    openPdfInTempDirectory().whenComplete(() =>
    {

    });
    return _createTempMessage();
  }
}