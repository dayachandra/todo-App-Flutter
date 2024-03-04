

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:todoey_flutter/screens/add_task_screen.dart';
import 'package:todoey_flutter/widgets/task_list.dart';

// ignore: must_be_immutable
class TaskScreen extends StatelessWidget {
   
  Widget buildBottomSheet (BuildContext context){
    return AddTaskScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        
        showModalBottomSheet(context: context, 
        builder: buildBottomSheet);
      },
      backgroundColor: Colors.lightBlueAccent,
      child: Icon(Icons.add,
      color: Colors.white,
      ),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 60,
              left: 30,
              right: 30,
              bottom: 30
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(Icons.list,
                  size: 30,
                  color: Colors.lightBlueAccent,
                  ),
                  radius: 30,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                Text('Todoey',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.w700
                ),
                ),
                  Text('${Provider.of<TaskData>(context).taskCount} Tasks',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                ),
          
          
          
              ],
            ),
          ),
                Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20
                ),
                width: double.infinity,
               decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30)
                )
               ),
               child: TasksList()
              ),
            )
        ],
      ));
  }
}



