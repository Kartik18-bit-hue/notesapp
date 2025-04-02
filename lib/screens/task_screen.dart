import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

import 'package:lottie/lottie.dart';
import 'package:notes/consstants.dart';
import 'package:notes/drawer_screen.dart';

import 'package:notes/extensions/space_exs.dart';
import 'package:notes/home_app_bar.dart';
import 'package:notes/task_drawer.dart';

import 'package:notes/utils/app_str.dart';

import 'package:notes/widget/fab.dart';
import 'package:notes/widget/task_widget.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  final GlobalKey<SliderDrawerState> drawerkey = GlobalKey<SliderDrawerState>();
  final List<int> testing = [2, 323, 23];
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: const Fab(),
      body: SliderDrawer(
        key: drawerkey,
        isDraggable: false,
        animationDuration: 1000,

        /// Drawer 
        slider: TaskDrawer(),
        
        appBar: HomeAppBar(drawerkey: drawerkey),
        child: _buildHomeBody(textTheme),
      ),
    );
  }

  Widget _buildHomeBody(TextTheme textTheme) {
    return SizedBox(
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
            padding: EdgeInsets.only(top: 10),
            child: Divider(thickness: 2, indent: 100),
          ),
          SizedBox(
            width: double.infinity,
            height: 745,
            child:
                testing.isNotEmpty
                    /// Task List is not empty
                    ? ListView.builder(
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
                              const Icon(
                                Icons.delete_outline,
                                color: Colors.grey,
                              ),
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
                    )
                    : SingleChildScrollView(
                      /// Task list is empty
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FadeIn(
                            child: SizedBox(
                              width: 200,
                              height: 200,
                              child: Lottie.asset(
                                lottieURL,
                                animate: testing.isNotEmpty ? false : true,
                              ),
                            ),
                          ),
                          FadeInUp(
                            from: 30,
                            child: const Text(AppStr.doneAllTask),
                          ),
                        ],
                      ),
                    ),
          ),
        ],
      ),
    );
  }
}
