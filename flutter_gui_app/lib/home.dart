import 'package:flutter/material.dart';

class Home extends StatelessWidget {
    const Home({super.key});

    @override
    Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
              title: const Text("This is the App"),
              backgroundColor: Colors.brown[700],
              centerTitle: true,
          ),
          body: const Text("Scaffolding is now a class in its own file"),
        );
    }
}