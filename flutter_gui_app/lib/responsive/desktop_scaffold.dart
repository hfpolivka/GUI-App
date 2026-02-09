import 'package:flutter/material.dart';
import 'package:flutter_gui_app/constants.dart';
import 'package:flutter_gui_app/utilities/standard_box.dart';
import 'package:flutter_gui_app/utilities/standard_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar,                         // defined in constants.dart
      backgroundColor: defaultBackgroundColor,    // defined in constants.dart 
      drawer: mainAppDrawer,                      // defined in constants.dart
      body: Row(
        children: [
          // open drawer
          mainAppDrawer,

          // rest of body
          Expanded(
            flex: 2,
            child: Column(            // similar to mobile and tablet
              children: [
                // 4 boxes on the top
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                      itemCount: 4,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
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
          ),
          Expanded(
            child: Column(              // full column on right side
              children: [
                Expanded(child: Container(color: Colors.pink)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}