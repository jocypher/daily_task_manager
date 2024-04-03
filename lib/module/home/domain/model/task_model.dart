import 'package:daily_task_manager/module/home/domain/model/user_model.dart';
import 'package:flutter/material.dart';

class Task {
  final List<User> userImage;
  final String taskDescription;
  final String taskAllocation;
  final int? activeTask;
  final Color userColor;
  final String? taskDate;

  Task(
      {required this.userImage,
      required this.taskDescription,
      required this.taskAllocation,
      this.activeTask,
      required this.userColor,
      this.taskDate});
}
