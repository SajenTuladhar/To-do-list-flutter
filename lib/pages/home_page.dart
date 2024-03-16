import 'package:flutter/material.dart';
import 'package:todo_list/util/todo_tile.dart';

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
          title: const Text("To Do's"),
          titleTextStyle: const TextStyle(
              color: Color.fromARGB(255, 255, 255, 255), fontSize: 21),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 19, 19, 19),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(50))),
        ),
        body: ListView(
          children:  [
            ToDoTile(taskName:"Power ON", 
            taskCompeleted: true ,
            onChanged: (p0) {
              
            },),
            ToDoTile(taskName:"Power off", 
            taskCompeleted: false ,
            onChanged: (p0) {
              
            },),
                     ],
        ));
  }
}
