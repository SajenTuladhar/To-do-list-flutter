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
        padding: const EdgeInsets.all(26),
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
            color:const Color.fromARGB(255, 93, 92, 92),
            borderRadius:
              const BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(0),topLeft: Radius.circular(20))),
        child: Row(
          children: [
            //chekcbox
          Checkbox(value: taskCompeleted, onChanged: onChanged),

            //tasks
             Text(taskName),
          ],
        ),
        
      ),
    );
  }
}
