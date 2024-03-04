import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   String? newTask;
    return Container(
      width: double.infinity,
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
             topRight: Radius.circular(30)
          )
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 50,
            vertical: 40
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              
              Text("Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30
              ),
              ),
              TextField(
                autofocus: true,
                onChanged: (value){
                  newTask = value;
                },
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor:MaterialStateProperty.all(Colors.lightBlueAccent)
                  
                ), 
                onPressed: (){
                 Provider.of<TaskData>(context,   listen: false).addTask(newTask!);
                 Navigator.pop(context);
                }, child: Text("Add",
                style: TextStyle(
                  color: Colors.white
                ),
                ))
            ],
          ),
        ),
      ),
    );
  }
}
