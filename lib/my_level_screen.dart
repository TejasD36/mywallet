import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyLevelScreen extends StatelessWidget {
  const MyLevelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text("My Level",style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 8.h),
          Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white),
                color: Colors.purple,
              ),
              width: 90.w,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 5.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Lv0",style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.bold),),
                        Padding(
                          padding: const EdgeInsets.all(8.0),

                          child: Container(
                            height: 0.8.h,
                            width: 55.w,
                            color: Colors.white,
                          ),
                        ),
                        Text("Lv1",style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    SizedBox(height: 1.h,),
                    Center(
                      child: Container(
                        height: 4.5.h,
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(8)
                        ),
                        alignment: Alignment.center,
                        width: 80.w,
                        child: Text(
                          "Get 77 Lifeline coin more to Level up",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 1.h,),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(8)
                        ),
                        alignment: Alignment.center,
                        width: 80.w,
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Column(
                            children: [
                              Container(
                                height: 5.h,
                                decoration: BoxDecoration(
                                    color: Colors.brown,
                                    borderRadius: BorderRadius.circular(8)
                                ),
                                alignment: Alignment.center,
                                width: 75.w,
                                child: Text(
                                  "Active Rewards",
                                  style: TextStyle(
                                    color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.sp
                                  ),
                                ),
                              ),
                              SizedBox(height: 2.h,),
                              Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                        "assets/level1.png",
                                        height: 2.h,
                                      ),
                                      Text("No Active Rewards", style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold,fontSize: 16.sp),),

                                    ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}
