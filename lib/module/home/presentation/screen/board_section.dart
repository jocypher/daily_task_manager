import 'package:daily_task_manager/module/home/presentation/screen/home_controller.dart';
import 'package:daily_task_manager/module/home/presentation/widget/board_widget.dart';
import 'package:daily_task_manager/module/home/presentation/widget/task_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BoardSection extends StatelessWidget {
  const BoardSection({super.key});

  @override
  Widget build(BuildContext context) {
    final homeProvider = context.watch<HomeProvider>();
    return Expanded(child:
    ListView.builder(
      itemCount: 3,
      shrinkWrap: true,
      itemBuilder: (context, index){
      return const BoardWidget();
    })
    );
  }
}
