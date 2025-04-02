
import 'package:flutter/material.dart';
import 'package:notes/drawer_screen.dart';
import 'package:notes/task_view.dart';


 void main() => runApp(MainApp());

class MainApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notes App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // Use StreamBuilder to listen for authentication state changes
      home:  TaskView(),
    );
  }
}



