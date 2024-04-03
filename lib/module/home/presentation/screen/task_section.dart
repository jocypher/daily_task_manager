import 'package:daily_task_manager/module/home/presentation/screen/home_controller.dart';
import 'package:daily_task_manager/module/home/presentation/widget/task_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TaskSection extends StatelessWidget {
  const TaskSection({super.key});

  @override
  Widget build(BuildContext context) {
    final homeProvider = context.watch<HomeProvider>();
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 90,
              height: 30,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(100)),
                    child: const Center(
                      child: Text(
                        "0",
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ),
                  ),
                  const Text(
                    "Boards",
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                  const SizedBox(
                    width: 10,
                  )
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  width: 70,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(child: Text('Active')),
                ),
                Container(
                  width: 70,
                  height: 30,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                      child: Text(
                    'Done',
                    style: TextStyle(color: Colors.white),
                  )),
                )
              ],
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: homeProvider.weekList.asMap().entries
              .map((e) {
                 final index = e.key;
                  final roomType = e.value;
                return InkWell(
                onTap: () {
                  homeProvider.updateSelect(index);
                },
                child: Text(
                      roomType['shorter'].toString(),
                      style: TextStyle(
                          color: homeProvider.isSelected == index
                              ? Colors.white
                              : Colors.grey.shade500),
                    ),
              );
              }
              )
              .toList(),
        ),

        Expanded(child:
        ListView.builder(
          itemCount: 3,
          shrinkWrap: true,
          itemBuilder: (context, index){
          return const TaskWidget();
        })
        )
      ],
    );
  }
}
