// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:todo_list/pages/home_page.dart';
import 'package:todo_list/pages/profile_page.dart';
import 'package:todo_list/pages/settings_page.dart';


class FirstPage extends StatefulWidget {
   const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
   //this keeps track of the current page to display
    int _selectedIndex=0;

  void _navigateBottomBar(int index ){
    setState(() {
      _selectedIndex = index;
    });
  }
  final List _pages = [
    //home page
    HomePage(),
    //profile page
    ProfilePage(),
    //settings  page
    SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("first page"),
        backgroundColor: Colors.pink,
        centerTitle: true,),
        body: _pages[_selectedIndex],
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
              Navigator.pop(context);
              //route to the home page
              Navigator.pushNamed(context, '/homepage');
            },

          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("S E T T I N G S"),
            onTap:() {
              Navigator.pop(context);              // route to the settings page
              Navigator.pushNamed(context, '/settingspage');
            },

          )  

          ],),
        ),    
      bottomNavigationBar: 
        // home
        BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
        items: [
          BottomNavigationBarItem(icon:  Icon(Icons.home),
          label: 'home'),

          //profile

          BottomNavigationBarItem(icon:  Icon(Icons.person),
          label: 'profile'),

          // settings

          BottomNavigationBarItem(icon:  Icon(Icons.settings),
          label: 'home'),
        ],
        
      ),  


    );
  }
}
