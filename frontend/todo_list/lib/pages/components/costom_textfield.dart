import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String hintText;
  CustomTextField({this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.white,
          shape: BoxShape.rectangle),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          contentPadding: EdgeInsets.only(left: 20, top: 7),
          prefixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.search),),
        ),
      ),
    );
  }
}
