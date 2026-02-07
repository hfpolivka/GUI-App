import 'package:flutter/material.dart';
import 'package:flutter_gui_app/responsive/responsive_layout.dart';
import 'package:flutter_gui_app/responsive/mobile_scaffold.dart';
import 'package:flutter_gui_app/responsive/tablet_scaffold.dart';
import 'package:flutter_gui_app/responsive/desktop_scaffold.dart';

void main () {
  runApp(const GUIApp());
}

class GUIApp extends StatelessWidget {
  const GUIApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: const MobileScaffold(),
        tabletScaffold: const TabletScaffold(),
        desktopScaffold: const DesktopScaffold()
      ),
    );
  }
}