

import 'package:flutter/material.dart';
import 'package:todo_list/util/dialog_box.dart';
import 'package:todo_list/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //list of todo tasks
  List toDoList =[
    ["Finish this tutorial",false],
    ["Concentrate Cunt",false],
  ];

  void addnewtask(){
    showDialog(
      context: context,
      builder: (BuildContext context){
      return DialogBox();
    },);
  }
  //check box was tapped
  void checkBoxChanged(bool ? value , int index){
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });

  
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 39, 38, 38),
        appBar: AppBar(
          title: const Text("To Do's"),
          titleTextStyle: const TextStyle(
              color: Color.fromARGB(255, 255, 255, 255), fontSize: 22, fontWeight: FontWeight.bold),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 19, 19, 19),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(50))),
        ),
        floatingActionButton: FloatingActionButton(
        onPressed: addnewtask,
        elevation: 5,
        child: const Icon(Icons.add),),
        body: ListView.builder(
          itemCount:toDoList.length,
          itemBuilder:(context, index) {
            return ToDoTile(taskName: toDoList[index][0],
             taskCompeleted:toDoList[index][1],
              onChanged: (value) => checkBoxChanged(value,index),
              );
          },
        )


   );
  }
}
