import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker_fork/flutter_cupertino_date_picker_fork.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/app_colors.dart';
import 'package:notes/date_time_selection.dart';
import 'package:notes/extensions/space_exs.dart';
import 'package:notes/rep_textfield.dart';
import 'package:notes/task_view_appbar.dart';
import 'package:notes/utils/app_str.dart';

class TaskView extends StatefulWidget {
  const TaskView({super.key});

  @override
  State<TaskView> createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  final TextEditingController titleTaskController = TextEditingController();
  final TextEditingController descriptionTaskController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: Scaffold(
        appBar: TaskViewAppbar(),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildTopSideTexts(textTheme),

                ///Main Task View Activity
                _buildMainTaskViewActivity(textTheme, context),

                ///Bottom Side Buttons
                _buildBottomSideButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }
      ///Bottom Side Buttons
  Widget _buildBottomSideButtons() {
    return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ///Delete Current Task Button
                    MaterialButton(
                      onPressed: () {
                        log("Current Task Has Been Added");
                      },
                      minWidth: 150,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      height: 55,
                      child: Row(
                        children: [
                          Icon(Icons.close, color: AppColors.primaryColor),
                          5.w,
                          Text(
                            AppStr.deleteTask,
                            style: TextStyle(color: AppColors.primaryColor),
                          ),
                        ],
                      ),
                    ),

                    ///Add Or Update Task
                    MaterialButton(
                      onPressed: () {
                        log("New Task Has Been Added");

                        /// Add or Update Task Activity
                      },
                      minWidth: 150,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      height: 55,
                      child: Text(
                        AppStr.addTaskString,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              );
  }

  Widget _buildMainTaskViewActivity(TextTheme textTheme, BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ///Title of TextField
          Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              AppStr.titleOfTitleTextField,
              style: textTheme.headlineMedium,
            ),
          ),
          RepTextField(controller: titleTaskController),
          10.h,
          RepTextField(
            controller: descriptionTaskController,
            isForDescription: true,
          ),

          ///Time Selection
          DateTimeSelectionWidget(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder:
                    (_) => SizedBox(
                      height: 280,
                      child: TimePickerWidget(
                        onChange: (_, __) {},
                        dateFormat: 'HH:mm',
                        onConfirm: (dateTime, _) {},
                      ),
                    ),
              );
            },
            title: AppStr.timeString,
          ),
          DateTimeSelectionWidget(
            onTap: () {
              DatePicker.showDatePicker(
                context,
                maxDateTime: DateTime(2030, 4, 5),
                minDateTime: DateTime.now(),

                ///initialDateTime:
                onConfirm: (dateTime, _) {},
              );
            },
            title: AppStr.dateString,
          ),
        ],
      ),
    );
  }

  Widget _buildTopSideTexts(TextTheme textTheme) {
    return SizedBox(
      width: double.infinity,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 70, child: Divider(thickness: 2)),
          RichText(
            text: TextSpan(
              text: AppStr.addNewTask,
              style: textTheme.titleLarge,
              children: [
                TextSpan(
                  text: AppStr.taskString,
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          SizedBox(width: 70, child: Divider(thickness: 2)),
        ],
      ),
    );
  }
}
