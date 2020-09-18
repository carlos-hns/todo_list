import 'package:flutter/material.dart';

class ListComponent extends StatelessWidget {

  final int indexOnDatabase;
  final bool feito;
  final String todo;
  ListComponent({this.feito, this.todo, this.indexOnDatabase});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
            shape: BoxShape.rectangle),
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.only(top: 10, left: 55, right: 60),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Text(
                this.todo,
                style: TextStyle(
                  color: Colors.grey[700],
                  fontFamily: "Abel",
                ),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            CircleAvatar(
              backgroundColor: this.feito ? Colors.green : Colors.orange,
              radius: 8,
            ),
            IconButton(icon: Icon(Icons.delete), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
