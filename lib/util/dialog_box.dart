import 'package:flutter/material.dart';
import 'package:todo_list/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;

  VoidCallback onSave;
  VoidCallback onCancle;

   DialogBox({super.key, required this.controller,
  required this.onSave, required this.onCancle});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      // ignore: sized_box_for_whitespace
      content: Container(
        
          height: 140,
          width: 400,
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: controller,
                decoration: const InputDecoration(border:OutlineInputBorder(),
                hintText: "Add a New Task"),
              ),
              Row(
                
                
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //save button
                  
                  MyButton(text: "Save", onPressed:onSave),

                  const SizedBox(width: 10,),
                  //cancel button
                  MyButton(text: "Cancel", onPressed: onCancle),
                  const SizedBox(width: 4,),
                ],

              )
            ],
          )),
    );
  }
}
