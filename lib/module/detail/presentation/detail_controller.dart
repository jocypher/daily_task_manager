import 'package:flutter/material.dart';

class DetailProvider extends ChangeNotifier {
  bool isFinished = false;

  void onWaiting() {
    Future.delayed(Duration(seconds: 2), () {
      isFinished = !isFinished;
      notifyListeners();
    });
  }
}
