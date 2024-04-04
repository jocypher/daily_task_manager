import 'package:daily_task_manager/core/app_colors.dart';
import 'package:daily_task_manager/module/home/presentation/screen/board_section.dart';
import 'package:daily_task_manager/module/home/presentation/screen/home_controller.dart';
import 'package:daily_task_manager/module/home/presentation/screen/task_section.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final provider = context.watch<HomeProvider>();
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    "assets/img3.jpg",
                    height: 40,
                    width: 40,
                    fit: BoxFit.fill,
                  ),
                ),
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
                                color: AppColors.backgroundColor2,
                                borderRadius: BorderRadius.circular(100)),
                            child: const Center(
                              child: Icon(
                                Icons.notifications_outlined,
                                size: 15,
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
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: AppColors.primaryTextColor),
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
                          color: AppColors.backgroundColor2,
                          borderRadius: BorderRadius.circular(100)),
                      child: const Center(
                        child: Icon(
                          Icons.add,
                          size: 15,
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
            padding: EdgeInsets.only(left: 15, right: 15, top: 60),
            child: Text("Good\nMorning",
                softWrap: true,
                style: TextStyle(
                    fontSize: 70,
                    color: AppColors.headingTextColor,
                    inherit: false,
                    height: 0.9,
                    letterSpacing: 2.0)),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Today's Monday",
                      style: TextStyle(
                          color: AppColors.primaryTextColor, fontSize: 15),
                    ),
                    Text(
                      "Dec 12, 2002",
                      style: TextStyle(color: AppColors.subprimaryTextColor),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "75% Done",
                      style: TextStyle(
                          color: AppColors.primaryTextColor, fontSize: 15),
                    ),
                    Text(
                      "Completed Tasks",
                      style: TextStyle(
                          color: AppColors.subprimaryTextColor,
                          letterSpacing: 0.5),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: provider.npage == 0
                                    ? AppColors.primaryTextColor
                                    : AppColors.secondaryTextColor))),
                    child: Row(
                      children: [
                        Container(
                          width: 30,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(10),
                                  right: Radius.circular(10))),
                          child: const Center(
                              child: Text(
                            "12",
                            style: TextStyle(fontSize: 13),
                          )),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            context.read<HomeProvider>().updatePage(0);
                          },
                          child: const Text(
                            "Tasks",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w300,
                                color: AppColors.primaryHeadingText),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: provider.npage == 1
                                    ? AppColors.primaryTextColor
                                    : AppColors.secondaryTextColor))),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 50,
                        ),
                        Container(
                          width: 30,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border(
                                  bottom: BorderSide(
                                      color: AppColors.secondaryTextColor),
                                  top: BorderSide(
                                      color: AppColors.secondaryTextColor),
                                  left: BorderSide(
                                      color: AppColors.secondaryTextColor),
                                  right: BorderSide(
                                      color: AppColors.secondaryTextColor))),
                          child: const Center(
                              child: Text(
                            "3",
                            style:
                                TextStyle(color: AppColors.secondaryTextColor),
                          )),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            context.read<HomeProvider>().updatePage(1);
                          },
                          child: const Text(
                            "Boards",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w300,
                                color: AppColors.secondaryTextColor),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(child: provider.sections[provider.npage])
        ],
      ),
    );
  }
}
