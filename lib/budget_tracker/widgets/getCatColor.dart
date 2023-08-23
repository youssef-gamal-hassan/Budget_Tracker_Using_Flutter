import 'package:flutter/material.dart';

Color getCategoryColor(String category){
  switch(category){
    case 'Entertainment':
      return Colors.cyanAccent;
    case 'Food':
      return Colors.lightGreenAccent;
    case 'Personal':
      return Colors.lightBlue;
    case 'Transportation':
      return Colors.redAccent;
    default:
      return Colors.orange[400]!;
  }
}