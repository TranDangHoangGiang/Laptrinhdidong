import 'package:flutter/material.dart';
import '../models/task.dart';
import 'package:intl/intl.dart';
import 'todolistscreen.dart';

class CompletedScreen extends StatelessWidget {
  final List<Task> completedTasks;
  CompletedScreen(this.completedTasks);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Công việc đã hoàn thành',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: completedTasks.length,
        itemBuilder: (context, index) {
          final task = completedTasks[index];
          final deadlineFormatted =
              DateFormat('dd/MM/yyyy').format(task.deadline);

          return ExpansionTile(
            title: Text(
              task.title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Hạn chót: $deadlineFormatted'),
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    task.content,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
