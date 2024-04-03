import 'package:daily_task_manager/module/home/presentation/screen/task_section.dart';
import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  int isSelected = -1;


void updateSelect(int index) {
    isSelected = index;
    notifyListeners();
  }
  List<Map<String, String>> weekList = [
    {'name': 'Monday', 'shorter': 'Mon'},
    {'name': 'Tuesday', 'shorter': 'Tue'},
    {'name': 'Wednesday', 'shorter': 'Wed'},
    {'name': 'Thursday', 'shorter': 'Thu'},
    {'name': 'Friday', 'shorter': 'Fri'},
    {'name': 'Saturday', 'shorter': 'Sat'},
    {'name': 'Sunday', 'shorter': 'Sun'}
  ];

  List<Widget> sections = [
    const TaskSection()
  ];
}
