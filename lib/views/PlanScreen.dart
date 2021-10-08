import 'package:flutter/material.dart';
import 'package:master_plan/models/Plan.dart';
import 'package:master_plan/models/Task.dart';

class PlanScreen extends StatefulWidget {
  @override
  _PlanScreenState createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  final plan = Plan(name: 'Master Plan');

  _buildTaskButton() {
    return FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            plan.tasks.add(Task());
          });
        });
  }

  _buildList() {
    return ListView.builder(
      itemCount: plan.tasks.length,
      itemBuilder: (context, num) {
        return ListTile(
            leading: Checkbox(
              value: plan.tasks[num].completed,
              onChanged: (value) {
                setState(() {
                  plan.tasks[num].completed = value;
                });
              },
            ),
            title: TextField(
              onChanged: (value) {
                setState(() {
                  plan.tasks[num].description = value;
                });
              },
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(plan.name),
      ),
      body: _buildList(),
      floatingActionButton: _buildTaskButton(),
    );
  }
}
