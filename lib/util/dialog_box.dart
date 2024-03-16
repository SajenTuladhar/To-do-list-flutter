import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_list/util/my_button.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      // ignore: sized_box_for_whitespace
      content: Container(
        
          height: 150,
          width: 400,
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const TextField(
                decoration: InputDecoration(border:OutlineInputBorder(),hintText: "Add a New Task"),
              ),
              Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //save button
                  
                  MyButton(text: "Save", onPressed: (){}),
                  //cancel button
                  MyButton(text: "Cancel", onPressed: (){})
                ],
              )
            ],
          )),
    );
  }
}
