import 'package:bottom_navigation_bar/Home.dart';
import 'package:bottom_navigation_bar/Search.dart';
import 'package:bottom_navigation_bar/Settings.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _selected_Index = 0;

  final List <Widget> _pages = [
    Home(),
    Settings(),
    Search()
  ];
  
  void _onItemTap(int index){
    setState(() {
      _selected_Index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _pages[_selected_Index],

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selected_Index,
          onTap: _onItemTap,
          items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "search")
        ]),
      ),
      
    );
  }
}