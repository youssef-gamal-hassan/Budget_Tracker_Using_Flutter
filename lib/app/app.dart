import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:budget_tracker/budget_tracker/budget_tracker.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Budget Tracker",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: BudgetScreen(),
    );
  }
}