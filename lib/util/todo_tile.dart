
import 'package:flutter/material.dart';


class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompeleted;
  Function(bool?)? onChanged;

  ToDoTile({super.key,required this.taskName,required this.taskCompeleted, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 40),
      child: Container(
        padding: const EdgeInsets.only(right: 26,bottom: 26,top: 26,left: 12),
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
            color:const Color.fromARGB(255, 255, 255, 255),
            borderRadius:
              const BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(0),topLeft: Radius.circular(20))),
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
    );
  }
}
