import 'package:flutter/material.dart';
import 'package:netflix_ui/ui_page/bottom_nav_page.dart';
import 'package:netflix_ui/ui_page/category_page.dart';
import 'package:netflix_ui/ui_page/home_page.dart';
import 'package:netflix_ui/ui_page/my_netflix_page.dart';
import 'package:netflix_ui/ui_page/new_hote_page.dart';
import 'package:netflix_ui/ui_page/profile_page.dart';
import 'package:netflix_ui/ui_page/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    context.read<ThemeProvider>().getPrefValue();
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode:Provider.of<ThemeProvider>(context).getThemeValue()?ThemeMode.dark:ThemeMode.light,
        //Provider.of<ThemeProvider>(context).getThemeValue()
        //context.watch<ThemeProvider>().getThemeValue()?ThemeMode.dark:ThemeMode.light
      home: BottomNavPage(),
    );
  }
}


