import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget { // Corrected 'extends' and class definition
    CustomAppBarWidget({Key? key, required this.text}) : super(key: key); // Lowercased 'key'
String text ="";
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 150,
          height: 50,
          decoration: BoxDecoration(
            color: Color(0xFFEE6A61),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              bottomLeft: Radius.circular(50),
              topRight: Radius.circular(150),
              bottomRight: Radius.circular(40),
            ),
          ),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.location_on_sharp,
                color: Colors.white,
              ),
              Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            shape: BoxShape.circle,
          ),
        ),
      ],
    ); // Added semicolon
  }
}
