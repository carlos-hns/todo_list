import 'package:flutter/material.dart';

import 'costom_textfield.dart';

class RoundedContainer extends StatelessWidget {

  BorderRadius border;
  double width;
  double height;

  RoundedContainer({this.border, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Container(
        width: width * 0.3,
        height: height * 0.7,
        decoration: BoxDecoration(
          color: Colors.grey[850],
          borderRadius: border
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            CustomTextField(hintText: "Dia"),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
