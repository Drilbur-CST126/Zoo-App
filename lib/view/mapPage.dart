

import 'package:flutter/cupertino.dart';
import 'package:flutter_full_pdf_viewer/flutter_full_pdf_viewer.dart';

class MapPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return PDFViewerScaffold(path: "assets/ZooMap.PDF",);
  }
}