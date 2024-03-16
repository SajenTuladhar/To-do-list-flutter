import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 38, 38, 38),
      appBar: AppBar(
        title: const Text("To Do List"),
        titleTextStyle: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 19, 19, 19),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(50))),
        leading: const Icon(Icons.hourglass_empty),
        foregroundColor: Colors.white,
      
      ),
    );
  }
}
