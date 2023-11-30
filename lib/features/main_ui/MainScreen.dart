// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      drawer: const Drawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Heading",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Text(
            "Sub Heading",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Text(
            "paragraph",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          ElevatedButton(onPressed: () {}, child: const Text("Button")),
          OutlinedButton(onPressed: () {}, child: const Text("Outline Button")),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Image.asset("assets/images/home.jpg"),
          )
        ],
      ),
    );
  }
}
