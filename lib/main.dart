import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void usertapped(){
    print("User tapped the button");
  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:Center(
          
        child : GestureDetector(
          onTap: usertapped,
        child:Container(
          height: 300, 
          width: 300, 
          color: const Color.fromARGB(255, 182, 207, 227),
          child: const Center (child: Text("Press me!",)),
          ),
      )
      )
      )
    );
  }
}