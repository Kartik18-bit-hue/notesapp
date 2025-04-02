import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes/app_colors.dart';
import 'package:notes/extensions/space_exs.dart';

class TaskDrawer extends StatelessWidget {
   TaskDrawer({super.key});

  ///Icons

  final List<IconData> icons = [
    CupertinoIcons.home,
    CupertinoIcons.person_fill,
    CupertinoIcons.settings,
    CupertinoIcons.info_circle_fill,
  ];

  /// Texts
  final List<String> texts = ["Home", "Profile", "Settings", "Details"];

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 90),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: AppColors.primaryGradientColor,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/avatar'),
          ),
          8.h,
          Text("Student Management System", style: textTheme.displaySmall,),
          Container(

            width: double.infinity,
            height: 300,
            child: ListView.builder(itemCount: icons.length, 
            itemBuilder: (BuildContext context, int index){
              return Container(
                margin: EdgeInsets.all(3),
                child: ListTile(
                  leading: Icon(icons[index],color: Colors.white,size: 30,),
                  title: Text(texts[index],style: TextStyle(color: Colors.white,),),
                
                ),
              );
            },
            ),
          )
        ],
      ),
    );
  }
}