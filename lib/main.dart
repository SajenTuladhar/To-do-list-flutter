import 'package:flutter/material.dart';
import 'package:todo_list/pages/first_page.dart';
import 'package:todo_list/pages/home_page.dart';
import 'package:todo_list/pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FirstPage(),
      routes: {
        '/firstpage':(context) => const FirstPage(),
        '/homepage':(context)=> const HomePage(),
        '/settingspage':(context)=> const SettingsPage()
      },
    );
  }
}