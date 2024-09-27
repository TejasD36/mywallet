import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget customCountCard(String title, int count){
  return Container(
    width: 47.w,
    height: 5.h,
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
        width: 1,
        color: Colors.grey,
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("$title :",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14.sp),),
        Text("$count"),
      ],
    ),
  );
}