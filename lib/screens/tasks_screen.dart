import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:to_dox/widgets/tasks_list.dart';
import 'package:to_dox/screens/add_task_screen.dart';
import 'package:provider/provider.dart';
import 'package:to_dox/models/task_data.dart';

class TasksScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTaskScreen(),
          );
        },
        backgroundColor: Colors.cyan,
        child: Icon(
          Icons.add,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 40, bottom: 30, left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(
                    Icons.assignment,
                    size: 30,
                  ),
                  radius: 30,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'To-DoX',
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '${Provider.of<TaskData>(context).countTasks} Tasks',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}
