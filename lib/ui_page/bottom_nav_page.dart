import 'package:flutter/material.dart';
import 'package:netflix_ui/ui_page/home_page.dart';
import 'package:netflix_ui/ui_page/new_hote_page.dart';
import 'package:netflix_ui/ui_page/profile_page.dart';

class BottomNavPage extends StatefulWidget{
  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int selectedIndex=0;
  bool isDark=false;
  List<Widget> navTo=[
    HomePage(),
    Center(child: Text("Game"),),
    NewHotePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    isDark = Theme.of(context).brightness==Brightness.dark;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.videogame_asset_outlined),label: "Game"),
        BottomNavigationBarItem(icon: Icon(Icons.video_collection_outlined),label: "New & Hot"),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle_sharp),label: "My Netflix"),
      ],
      selectedItemColor:isDark?Colors.white:Colors.black,
      unselectedItemColor: Colors.grey,
      currentIndex: selectedIndex,
        onTap: (value){
        selectedIndex=value;
        setState(() {});
        },
      ),
      body: navTo[selectedIndex],
    );
  }
}