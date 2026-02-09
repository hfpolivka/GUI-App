import 'package:flutter/material.dart';
import 'package:flutter_gui_app/constants.dart';
import 'package:flutter_gui_app/utilities/standard_box.dart';
import 'package:flutter_gui_app/utilities/standard_tile.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar,                         // defined in constants.dart
      backgroundColor: defaultBackgroundColor,    // defined in constants.dart
      drawer: mainAppDrawer,                      // defined in constants.dart
      body: Column(
        children: [
          // 4 boxes on the top
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return const StandardBox();             // defined in /utilities/standard_box.dart
                },
              ),
            ),
          ),

          // tiles below it
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return const StandardTile();
              },
            ),
          ),
        ],
      ),
    );
  }
}