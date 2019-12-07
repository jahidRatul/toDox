import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AddTaskScreen extends StatelessWidget {
  final Function callbackTitle;
  AddTaskScreen(this.callbackTitle);
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      color: Color(0xff004c55),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlue),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            FlatButton(
              child: Text(
                'Add to list',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              color: Colors.lightBlue,
              onPressed: () {
                callbackTitle(newTaskTitle);
              },
            ),
          ],
        ),
      ),
    );
  }
}
