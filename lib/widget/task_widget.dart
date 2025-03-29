import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() {
        /// Navigate to Task View to see Task detail
      },
      child: AnimatedContainer(
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 181, 170, 210),
          borderRadius: BorderRadius.circular(8),
        ),
        duration: const Duration(milliseconds: 600),
        child: ListTile(
          leading: GestureDetector(
            onTap: () {
              ///Check or uncheck the task
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 600),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 87, 179, 255),
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey, width: .8),
              ),
              child: const Icon(Icons.check, color: Colors.white),
            ),
          ),
          title: const Padding(
            padding: const EdgeInsets.only(bottom: 5, top: 3),
            child: Text(
              "Done",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          /// Task Description
          subtitle: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Description", style: TextStyle(color: Colors.grey,fontSize:14, fontWeight:  FontWeight.w300),
              // decoration: TextDecoration.lineThrough,
            
            ),
            /// Date of task
            
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    Text(
                      "Date",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "Sub date",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    )
                    
                  ],
                ),
              ),
            )
              
            ],
          ),
        ),
      ),
    );
  }
}
