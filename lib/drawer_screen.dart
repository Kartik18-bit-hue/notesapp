import 'package:flutter/material.dart';
import 'package:notes/screens/home.dart';
import 'package:notes/screens/task_screen.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(title: const Text('Notes App',textAlign: TextAlign.center,),
   
      titleTextStyle: TextStyle(fontWeight: FontWeight.bold),),
      drawer: Drawer(
        backgroundColor: Colors.blueGrey,
        child: ListView(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          image: DecorationImage(
                            image: AssetImage("assets/book.png"),
                          ),
                        ),
                      ),
                      Text(
                        "Notes App",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.amber,
                          fontSize: 23,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Notes'),
              leading: Icon(Icons.note, size: 25, color: Colors.black),
              trailing: Icon(Icons.navigate_next_rounded),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
              ListTile(
              title: Text('Task Management'),
              leading: Icon(Icons.list_rounded, size: 25, color: Colors.black),
              trailing: Icon(Icons.navigate_next_rounded),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => TaskScreen()));
              },
            
            ),
          ],
        ),
        
        
      ),
      
      
      body: const Center(
      
        
        child: Column(
        
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Text(
              
              "Home Screen",
            
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.amberAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


