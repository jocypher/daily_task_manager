import 'package:daily_task_manager/module/detail/presentation/detail_controller.dart';
import 'package:daily_task_manager/module/detail/presentation/detail_screen.dart';
import 'package:daily_task_manager/module/home/presentation/screen/home_controller.dart';
import 'package:daily_task_manager/module/home/presentation/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>HomeProvider() ),
        ChangeNotifierProvider(create: (context)=>DetailProvider() )
        ],
      child: const MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: DetailScreen(),
      ),
    );
  }
}
