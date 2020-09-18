import 'package:flutter/material.dart';
import 'package:todo_list/pages/components/roundedContainer.dart';

import 'components/costom_textfield.dart';

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
            children: [
              RoundedContainer(
                border: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  topLeft: Radius.circular(50),
                ),
                width: width,
                height: height,
              ),
              RoundedContainer(
                border: BorderRadius.circular(9),
                width: width,
                height: height,
              ),
              RoundedContainer(
                border: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                width: width,
                height: height,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
