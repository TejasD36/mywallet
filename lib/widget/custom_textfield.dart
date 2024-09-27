import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget customTextfield (String hintText, TextEditingController controller, double width ){
  return Container(
    padding: const EdgeInsets.all(8),
    width: width,
    height: 4.h,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(width: 1),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Center(
      child: TextFormField(
        controller: controller,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 16.sp),
          border: InputBorder.none,
        ),
      ),
    ),
  );
}