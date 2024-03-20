import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({required this.text , required this.backgroundColor,required this.onTap});
  String? text ;
  Color? backgroundColor ;
  Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 15),
        width: double.infinity,
        decoration:BoxDecoration(
            color: backgroundColor
        ),
        child:Text(
          text!,
          style: const TextStyle(
              fontSize: 18,
              color: Colors.white
          ),
        ),
      ),
    );
  }
}