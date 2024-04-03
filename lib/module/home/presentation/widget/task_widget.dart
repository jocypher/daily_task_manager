import 'package:daily_task_manager/module/home/domain/model/user_model.dart';
import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(40)),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.person),
              Row(
                children: [
                  const Text("1h 30m"),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300.withOpacity(0.7)),
                    child: const Icon(
                      Icons.check,
                      size: 20,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        const Text("Myself"),
        const Text("Walk My dog Home")
      ]),
    );
  }
}
