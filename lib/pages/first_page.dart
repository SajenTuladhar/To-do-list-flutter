// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("first page"),
        backgroundColor: Colors.pink,
        centerTitle: true,),
        drawer:  Drawer(
          backgroundColor: Colors.pink[100],
          child: Column
          (children: [
            DrawerHeader(
              child:Icon(
                Icons.bolt,
                size:50
              )
            ),

          ListTile(
            leading: Icon(Icons.home),
            title: Text("H O M E"),
            onTap:() {
              
            },

          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("S E T T I N G S"),
            onTap:() {
              
            },

          )  

          ],),
        ),
        
        


    );
  }
}
