import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {


 final bool? isChecked ;
 final String? taskTile;
 final Function? checkboxCallback;
 final Function()? longPressCallback;

 TaskTile({
  this.isChecked,
  this.taskTile, 
  this.checkboxCallback,
  this.longPressCallback
 });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(taskTile!,
      style: TextStyle(
        decoration: isChecked! ? TextDecoration.lineThrough : null
      ),
      ),
      trailing: Checkbox(value: isChecked,
    onChanged: (bool? value){
      checkboxCallback!(value);
    }
      
  
     )
    );
  }
}


class TaskCheckBox extends StatelessWidget {
  final bool? checkboxState;
  final Function(bool) toggleCheckboxState;
  TaskCheckBox(this.checkboxState,
  this.toggleCheckboxState
  );

  @override
  Widget build(BuildContext context) {
    return Checkbox(value: checkboxState,
    onChanged: (bool? value){
      toggleCheckboxState(value ?? false);
    }
     );
  }
}