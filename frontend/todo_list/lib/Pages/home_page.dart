import 'package:flutter/material.dart';
import 'package:todo_list/components/costom_textfield.dart';
import 'package:todo_list/components/list_component.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        color: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
            SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: width * 0.03),
                  child: Container(
                    width: width * 0.3,
                    height: height * 0.7,
                    decoration: BoxDecoration(
                      color: Colors.grey[850],
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(50),
                        topLeft: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        CustomTextField(hintText: "Dia"),
                        SizedBox(height: 20,),
                        ListComponent(),
                        ListComponent(),
                        ListComponent(),
                        ListComponent(),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: width * 0.02),
                Container(
                  width: width * 0.3,
                  height: height * 0.7,
                  decoration: BoxDecoration(
                      color: Colors.grey[850],
                      borderRadius: BorderRadius.circular(9)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      CustomTextField(
                        hintText: "Semana",
                      ),
                    ],
                  ),
                ),
                SizedBox(width: width * 0.02),
                Padding(
                  padding: EdgeInsets.only(right: width * 0.03),
                  child: Container(
                    width: width * 0.3,
                    height: height * 0.7,
                    decoration: BoxDecoration(
                      color: Colors.grey[850],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        CustomTextField(
                          hintText: "Mês",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
