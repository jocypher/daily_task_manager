import 'package:daily_task_manager/module/home/domain/model/user_model.dart';
import 'package:flutter/material.dart';

class BoardWidget extends StatelessWidget {
  final User user;
  const BoardWidget({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135,
      width: double.infinity,
      decoration: BoxDecoration(
          color: user.userColor, borderRadius: BorderRadius.circular(40)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(100)),
                    child: const Icon(
                      Icons.add,
                      weight: 50,
                      size: 20,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      user.userImage[0],
                      height: 40,
                      width: 40,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Icon(Icons.more_horiz),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "${user.activeTask} Active Task",
            style: const TextStyle(
                fontWeight: FontWeight.w400, letterSpacing: 0.1),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            user.taskAllocation,
            style: const TextStyle(
                fontSize: 27,
                height: 0.9,
                fontWeight: FontWeight.w300,
                letterSpacing: 1.1),
          ),
        )
      ]),
    );
  }
}
