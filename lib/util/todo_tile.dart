
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';


class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompeleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  ToDoTile({super.key,required this.taskName,required this.taskCompeleted, required this.onChanged,required this.deleteFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 40),
      child: Slidable(
        endActionPane: ActionPane(
          // ignore: prefer_const_constructors
          motion: StretchMotion(),
          children: [
            SlidableAction(
            onPressed: deleteFunction,
            icon: (Icons.delete),
            label: "Delete",
            backgroundColor: Colors.red,
            borderRadius: BorderRadius.circular(15) ,)
          ],
        ),
        child: Container(
          padding: const EdgeInsets.only(right: 26,bottom: 26,top: 26,left: 12),
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
              color:const Color.fromARGB(255, 255, 255, 255),
              borderRadius:
                const BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15),topLeft: Radius.circular(40),topRight: Radius.circular(15))),
          child: Row(
            children: [
              //chekcbox
            Transform.scale(
              // ignore: sort_child_properties_last
              child: Checkbox(value:
               taskCompeleted, 
               onChanged: onChanged,
               activeColor:Colors.white,
               checkColor: Colors.black,
               ),
               scale: 1.4,
            ),
              //tasks
               Text(taskName, 
               style:  TextStyle(fontSize: 20,
               fontWeight:FontWeight.bold,
               color: Colors.black, 
               decoration: taskCompeleted ? TextDecoration.lineThrough :TextDecoration.none,
               decorationThickness: 3
               
               ),),
            ],
          ),
          
        ),
      ),
    );
  }
}
