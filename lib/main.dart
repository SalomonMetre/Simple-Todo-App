import 'package:flutter/material.dart';
import 'package:master_plan/views/PlanScreen.dart';

main(List<String> args) {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.indigo,
    ),
    home: PlanScreen(),
  ));
}
