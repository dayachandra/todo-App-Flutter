import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:todoey_flutter/screens/tasks_tile.dart';

class TasksList extends StatelessWidget {

 
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) => 
       ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return TaskTile(
          taskTile: taskData.tasks[index].name,
          isChecked:taskData.tasks[index].isDone ,
          checkboxCallback: (bool checkboxState){
            taskData.updateTask(task);
        },
        longPressCallback: (){
          taskData.deleteTask(task);
        },
      
          );
        },
        itemCount: taskData.taskCount
      ),
    );
  }
}
