import 'package:daily_task_manager/core/app_colors.dart';
import 'package:daily_task_manager/module/home/domain/model/user_model.dart';
import 'package:daily_task_manager/module/home/presentation/screen/board_section.dart';
import 'package:daily_task_manager/module/home/presentation/screen/task_section.dart';
import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  int isSelected = -1;
  int npage = 0;

  void updateSelect(int index) {
    isSelected = index;
    notifyListeners();
  }

  void updatePage(int page) {
    npage = page;
    print(page);
    notifyListeners();
  }

  List<User> users = [
    User(
        userImage: ["assets/img1.jpg"],
        userColor: AppColors.primaryTextColor,
        taskDescription: "Walk My Dog",
        taskDate: '1h 45m',
        activeTask: 2,
        taskAllocation: "Work"),
    User(
        userImage: ["assets/img2.jpg", "assets/img1.jpg"],
        userColor: AppColors.boardColor3,
        taskDescription: "Grocery Shopping",
        taskDate: '1h 45m',
        activeTask: 4,
        taskAllocation: "Myself"),
    User(
        userImage: ["assets/img1.jpg", "assets/img2.jpg", "assets/img3.jpg"],
        userColor: AppColors.boardColor2,
        taskDescription: "Business Manage",
        activeTask: 6,
        taskDate: '1h 45m',
        taskAllocation: "Home")
  ];

  List<Map<String, String>> weekList = [
    {'name': 'Monday', 'shorter': 'Mon'},
    {'name': 'Tuesday', 'shorter': 'Tue'},
    {'name': 'Wednesday', 'shorter': 'Wed'},
    {'name': 'Thursday', 'shorter': 'Thu'},
    {'name': 'Friday', 'shorter': 'Fri'},
    {'name': 'Saturday', 'shorter': 'Sat'},
    {'name': 'Sunday', 'shorter': 'Sun'}
  ];

  List<Widget> sections = [const TaskSection(), const BoardSection()];
}
