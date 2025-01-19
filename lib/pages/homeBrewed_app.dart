// ignore: file_names
// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'dart:ui_web' as ui;

import 'package:flutter/material.dart';

class HomeBrewedPage extends StatelessWidget {
  const HomeBrewedPage({super.key});

  @override
  Widget build(BuildContext context) {
    ui.platformViewRegistry.registerViewFactory(
      'homeBrewed-view',
      (int viewId) => IFrameElement()
        ..src = '/homeBrewed/index.html'
        ..style.border = 'none',
    );

    return const HtmlElementView(viewType: 'homeBrewed-view');
  }
}
