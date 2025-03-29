import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';
import 'package:notes/consstants.dart';

import 'package:notes/extensions/space_exs.dart';
import 'package:notes/utils/app_str.dart';

import 'package:notes/widget/fab.dart';
import 'package:notes/widget/task_widget.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  final List<int> testing = [];
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: const Fab(),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 60),
              width: double.infinity,
              height: 100,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ///Progress Indicator
                  SizedBox(
                    width: 30,
                    height: 30,
                    child: const CircularProgressIndicator(
                      value: 1 / 3,
                      backgroundColor: Colors.grey,
                      valueColor: AlwaysStoppedAnimation(Colors.purple),
                    ),
                  ),

                  ///Space
                  25.w,

                  ///Top level task info
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(AppStr.mainTitle, style: textTheme.displayLarge),
                      3.h,
                      Text("1 of 3 task", style: textTheme.titleMedium),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Divider(thickness: 2, indent: 100),
            ),
            SizedBox(
              width: double.infinity,
              height: 745,
              child: testing.isNotEmpty? ListView.builder(
                itemCount: testing.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Dismissible(
                    direction: DismissDirection.horizontal,
                    onDismissed: (_) {
                      /// will remove current task from DB
                    },
                    background: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.delete_outline, color: Colors.grey),
                        8.w,
                        const Text(
                          AppStr.deletedTask,
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    key: Key(index.toString()),
                    child: TaskWidget(),
                  );
                },
              ): SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  FadeIn(
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Lottie.asset(lottieURL, animate: testing.isNotEmpty ? false : true,)),
                  ),
                  Text(AppStr.doneAllTask,)
                ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
