import 'package:flutter/material.dart';

class ListComponent extends StatelessWidget {
  bool feito;
  String todo;
  ListComponent({this.feito, this.todo});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      width: width * 0.21,
      height: height * 0.07,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          shape: BoxShape.rectangle),
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Text(
            "Atividade de Cálculo",
            style: TextStyle(
              color: Colors.grey[700],
              fontFamily: "Abel",
            ),
          ),
          SizedBox(width: 30,),
          CircleAvatar(
            backgroundColor: Colors.green,
            radius: 8,
          ),
          IconButton(icon: Icon(Icons.delete), onPressed: (){}),
        ],
      ),
    );
  }
}
