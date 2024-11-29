import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Countercontrol extends ChangeNotifier{

  int _count=0;

  int get count=>_count;

  void increment(){
    _count++;
    notifyListeners();
  }
  void decrement(){
    _count--;
    notifyListeners();
  }


}