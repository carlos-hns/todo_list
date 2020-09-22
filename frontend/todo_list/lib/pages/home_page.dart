import 'package:flutter/material.dart';
import 'package:todo_list/pages/components/roundedContainer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "MY TASKS",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w900,
              fontSize: 30,
              fontFamily: "Abel",
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ItemContainer(
                border: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  topLeft: Radius.circular(50),
                ),
                width: width,
                height: height,
                searchHintText: "Dia",
              ),
              ItemContainer(
                border: BorderRadius.circular(9),
                width: width,
                height: height,
                searchHintText: "Semana",
              ),
              ItemContainer(
                border: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                width: width,
                height: height,
                searchHintText: "Mês",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
