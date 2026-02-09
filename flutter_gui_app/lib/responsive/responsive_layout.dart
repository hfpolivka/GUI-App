import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  // Final State Widget Sizes
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;

  // Final State Widget Size constructors
  ResponsiveLayout({
    required this.mobileScaffold,
    required this.tabletScaffold,
    required this.desktopScaffold,
  });

  @override
  Widget build(BuildContext context) {
    // Change layout with window size
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 550) {
          // Use mobile size when screen is less than X pixels
          return mobileScaffold;
        } else if (constraints.maxWidth > 550 && constraints.maxWidth < 1100) {
          // Use tablet size when screen is less than X pixels
          return tabletScaffold;
        } else {
          // Otherwise, use desktop size
          return desktopScaffold;
        }
      },
    );
  }
}