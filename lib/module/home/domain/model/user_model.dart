import 'package:flutter/material.dart';

class User{
  final List<String> userImage;
  final String taskDescription;
  final String taskAllocation;
  final int? activeTask;
  final Color userColor;
  final String? taskDate;

  User({required this.userImage,
  required this.userColor,
  required this.taskDescription, 
  required this.taskAllocation,
  this.taskDate,
  this.activeTask});
}