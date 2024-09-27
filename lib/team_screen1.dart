import 'package:flutter/material.dart';
import 'package:mywallet/widget/member_details_card.dart';
import 'package:mywallet/widget/team_member_card.dart';
import 'package:mywallet/team_screen2.dart';
import 'package:sizer/sizer.dart';

class TeamScreen1 extends StatelessWidget {
  const TeamScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Text(
              "Level 1 Team",
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 2.w,),
            Text(
              "Team Size:- 75",
              style: TextStyle(fontSize: 16.sp),
            ),
            const Spacer(),
            Image.asset("assets/antenna.png", height: 4.5.h,),
            Text(
              "Team Messages",
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),

      body: ListView.builder(
        itemCount: 75,
        itemBuilder: (context,index){
          return Column(
            children: [
              SizedBox(
                height: 1.h,
              ),
              const Center(
                child: TeamMemberCard(
                  hasData: true,
                  hasLeader: false,
                  title: "Level 1 Team",
                  name: "Satish Jayvant Kadam",
                  joiningDate: "14/March/1992",
                  totalCardMember: 75,
                  totalNonCardMember: 177,
                  isVip: true,
                ),
              ),
            ],
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const TeamScreen2()));
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
