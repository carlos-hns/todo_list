import 'package:flutter/material.dart';
import 'package:todo_list/pages/home_page.dart';
void main() {
  runApp(MaterialApp(
    title: "My Tasks",
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}