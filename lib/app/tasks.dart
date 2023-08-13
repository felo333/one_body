import 'package:flutter/material.dart';
import 'package:one_body/app/dashboard.dart';
import 'package:one_body/templates.dart';
var tasksCompleted = tasks.length;
class Tasks extends StatelessWidget {
  const Tasks({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(),
      drawer: MyDrawer(),
    );
  }
}
