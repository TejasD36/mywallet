import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget customButton(String title, Color buttonColor, double width, VoidCallback onPress,  {Gradient? gradient,Color? buttonBgColor = Colors.white}){
  return GestureDetector(
    onTap: onPress,
    child: Container(
      padding: const EdgeInsets.all(8),
      width: width,
      height: 4.h,
      decoration: BoxDecoration(
        gradient: gradient,
        color: gradient == null ? buttonBgColor : null,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,
          width: 1,
        )
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: buttonColor,
          ),
        ),
      ),
    ),
  );
}