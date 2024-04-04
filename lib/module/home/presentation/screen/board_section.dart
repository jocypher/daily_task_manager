import 'package:daily_task_manager/module/detail/presentation/detail_screen.dart';
import 'package:daily_task_manager/module/home/presentation/screen/home_controller.dart';
import 'package:daily_task_manager/module/home/presentation/widget/board_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BoardSection extends StatelessWidget {
  const BoardSection({super.key});

  @override
  Widget build(BuildContext context) {
    final homeProvider = context.watch<HomeProvider>();
    return Expanded(
      child: ListView.builder(
          itemCount: homeProvider.users.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final user = homeProvider.users[index];
            return GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return DetailScreen(user: user);
                  }));
                },
                child: BoardWidget(user: user));
          }),
    );
  }
}
