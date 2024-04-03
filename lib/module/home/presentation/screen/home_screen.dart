import 'package:daily_task_manager/core/app_colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.person),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: Stack(
                          fit: StackFit.loose,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: AppColors.boardColor2,
                                  borderRadius: BorderRadius.circular(100)),
                              child: const Center(
                                child: Icon(
                                  Icons.notifications_outlined,
                                  color: AppColors.primaryTextColor,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 20,
                              right: 4,
                              child: Container(
                                width: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: AppColors.headingTextColor),
                                child: const Center(
                                  child: Text(
                                    "12",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 1,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: AppColors.boardColor2,
                            borderRadius: BorderRadius.circular(100)),
                        child: const Center(
                          child: Icon(
                            Icons.add,
                            color: AppColors.primaryTextColor,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 100),
              child: Text("Good\nMorning",
                  softWrap: true,
                  style: TextStyle(
                      fontSize: 70,
                      color: AppColors.boardColor2,
                      inherit: false,
                      wordSpacing: -5.0,
                      letterSpacing: 2.0)),
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Today's Monday",
                      style: TextStyle(color: AppColors.primaryTextColor),
                    ),
                    Text(
                      "Dec 12, 2002",
                      style: TextStyle(color: AppColors.secondaryTextColor),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "75% Done",
                      style: TextStyle(color: AppColors.primaryTextColor),
                    ),
                    Text(
                      "Completed Tasks",
                      style: TextStyle(color: AppColors.secondaryTextColor),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
