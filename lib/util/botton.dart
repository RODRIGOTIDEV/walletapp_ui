import 'package:flutter/material.dart';

class Botton extends StatelessWidget {
  final iconButton;
  final String textButton;
  const Botton({Key? key, required this.iconButton, required this.textButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 10,
                spreadRadius: 10,
              )
            ],
          ),
          child: Center(
            child: Image.asset(iconButton),
          ),
        ),
        SizedBox(height: 10),
        Text(
          textButton,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700]),
        )
      ],
    );
  }
}
