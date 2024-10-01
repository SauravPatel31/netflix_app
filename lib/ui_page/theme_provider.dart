import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier{
  bool isDark=false;

  void getPrefValue()async{
    SharedPreferences pref =await SharedPreferences.getInstance();
    isDark =  pref.getBool("ThemeKey")??false;
    notifyListeners();
  }

  void changeThemeValue(bool newValue)async{
    isDark=newValue;
    SharedPreferences prefe = await SharedPreferences.getInstance();
    prefe.setBool("ThemeKey", newValue);
    notifyListeners();
  }

  getThemeValue()=>isDark;
}