import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mywallet/widget/custom_button.dart';
import 'package:mywallet/widget/custom_textfield.dart';
import 'package:sizer/sizer.dart';

Widget customReferralCard(String title, String hintText,
    TextEditingController controller, String buttonText, Color buttonColor, VoidCallback onPress) {
  return Container(
    padding: const EdgeInsets.all(10),
    width: double.infinity,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Colors.grey,
          Colors.grey.shade300,
          Colors.white,
        ],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              title,
              style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold,),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            customTextfield(hintText, controller, 60.w),
            customButton(buttonText, buttonColor, 30.w, onPress ,buttonBgColor: Colors.white),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Align(
            alignment: Alignment.bottomRight,
            child:
            Text(
              "(Note: Code is onetime update only)",
              style: TextStyle(fontSize: 14.sp,),
            ),
          ),
        ),
      ],
    ),
  );
}
