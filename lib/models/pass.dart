
import 'package:flutter/widgets.dart';

class MyPass with ChangeNotifier {
  String _pass1='';
  String _pass2='';
  bool _check=false;

  String get getPass1 => _pass1;

  String get getPass2 => _pass2;

  bool get getCheck => _check;

  void changePass1(String newPass1){
    _pass1=newPass1;
    _check=checkPass() as bool;
    notifyListeners();
  }

  void changePass2(String newPass2){
    _pass2=newPass2;
    _check=checkPass() as bool;
    notifyListeners();
  }

  //check for equals pass1 and pass2
  bool checkPass()  {
    if((_pass1.length>0 && _pass2.length>0) && _pass1==_pass2){
      return true;
    } else return false;
  }
}