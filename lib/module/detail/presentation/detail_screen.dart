import 'package:daily_task_manager/core/app_colors.dart';
import 'package:daily_task_manager/module/detail/presentation/detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final detailProvider = context.watch<DetailProvider>();
    return Material(
      color: AppColors.mainColor.withOpacity(0.9),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 70),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(100)),
                    child: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(100)),
                    child: const Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Container(
                height: 35,
                width: 130,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(30)),
                child: const Center(child: Text('Sweet Home')),
              ),
              const SizedBox(height: 25),
              const Text("Grocery\nShopping",
                  softWrap: true,
                  textHeightBehavior: TextHeightBehavior(
                      applyHeightToFirstAscent: false,
                      applyHeightToLastDescent: false),
                  style: TextStyle(
                      fontSize: 70,
                      color: Colors.black,
                      height: 0.9,
                      inherit: false,
                      wordSpacing: -5.0,
                      letterSpacing: 2.0)),
              const SizedBox(height: 30),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text("Time Left",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                              fontWeight: FontWeight.w600))),
                  Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text("Assignee",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w600))),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "2h 45m",
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                      Text("Dec 12, 2022",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          "assets/img1.jpg",
                          height: 60,
                          width: 60,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                        right: 10,
                        top: 1,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            "assets/img3.jpg",
                            height: 60,
                            width: 60,
                            fit: BoxFit.fill,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text("Additional Description",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.w600)),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "We have to buy some fresh bread , fruit and Vegetable. Supply of water is running out",
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
                softWrap: true,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text("Created",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.w600)),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Text(
                    "Dec 10 by Matt",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      "assets/img1.jpg",
                      height: 30,
                      width: 30,
                      fit: BoxFit.fill,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              SwipeableButtonView(
                  isFinished: detailProvider.isFinished,
                  onFinish: () {
                    print("done");
                  },
                  onWaitingProcess: () {
                    detailProvider.onWaiting();
                  },
                  activeColor: Colors.black,
                  buttonWidget: const Icon(Icons.check),
                  buttonText: "Set As Done"),
            ],
          ),
        ),
      ),
    );
  }
}
