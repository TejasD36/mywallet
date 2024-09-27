import 'package:flutter/material.dart';
import 'package:mywallet/widget/custom_button.dart';
import 'package:sizer/sizer.dart';

class TeamMemberCard extends StatelessWidget {
  final bool hasData;
  final String? title;
  final String? name;
  final String? joiningDate;
  final int? totalCardMember;
  final int? totalNonCardMember;
  final bool? isVip;
  final bool? hasLeader;
  final Color? titleColour;

  const TeamMemberCard({
    super.key,
    required this.hasData,
    this.title,
    this.name,
    this.joiningDate,
    this.totalCardMember,
    this.totalNonCardMember,
    this.isVip,
    this.hasLeader,
    this.titleColour
  });

  @override
  Widget build(BuildContext context) {

    var gradient = LinearGradient(
      colors: [
        Colors.grey,
        Colors.grey.shade300,
        Colors.white,
      ],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    );

    if (!hasData) {
      return Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                "User Not Found",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              width: 95.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1),
                color: Colors.red,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ClipOval(
                      child: Image.asset(
                        "assets/profilepic.png",
                        height: 8.h,
                        width: 8.h,
                        fit: BoxFit.cover,
                      )),
                  Text(
                    "User Not Found",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23.sp,
                        color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ],
      );
    }

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8.0),
          width: 95.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1),
            color: (isVip ?? false) ? Colors.yellow : Colors.orangeAccent,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Center(
                        child: Text(
                          title!,style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: (titleColour ?? Colors.black)),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: ClipOval(
                              child: Image.asset(
                                "assets/profilepic.png",
                                height: 8.h,
                                width: 8.h,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Name: $name", style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold),),
                                Text("Joining Date: $joiningDate", style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold),),
                                Text("Total Card Member: $totalCardMember", style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold),),
                                Text("Total Non Card Member: $totalNonCardMember", style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      (isVip ?? false )
                          ? ClipOval(
                        child: Image.asset(
                          "assets/crown.png",
                          height: 7.h,
                          width: 7.h,
                          fit: BoxFit.cover,
                        ),
                      )
                          : const SizedBox(),
                      SizedBox(height: 1.h),
                      (isVip ?? false )
                          ? customButton("VIP Member", Colors.black, 30.w, (){}, gradient: gradient)
                          : customButton("Non VIP Member", Colors.red, 32.w, (){}, gradient: gradient)
                      ,
                    ],
                  )
                ],
              ),

              SizedBox(height: 1.h,),

              hasLeader!
                  ? const SizedBox()
                  : Container(
                    // padding: const EdgeInsets.symmetric(8),
                    width: double.infinity,
                    height: 6.5.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1),
                      gradient: gradient,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Chat this member",style: TextStyle(fontSize: 17.sp),),

                        CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Center(
                              child: IconButton(
                                icon: Icon(Icons.call,size: 3.h,color: Colors.blue),
                                onPressed: (){},
                              ),
                            )
                        ),
                        CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Center(
                              child: IconButton(
                                icon: Icon(Icons.chat_bubble_outline_sharp,size: 3.h,color: Colors.green),
                                onPressed: (){},
                              ),
                            )
                        ),
                        CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Center(
                              child: IconButton(
                                icon: Icon(Icons.message_rounded,size: 3.h,),color: Colors.greenAccent,
                                onPressed: (){},
                              ),
                            )
                        ),
                      ],
                    ),
                  )
            ],
          ),
        ),
      ],
    );
  }
}
