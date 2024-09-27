import 'package:flutter/material.dart';
import 'package:mywallet/widget/custom_count_card.dart';
import 'package:mywallet/widget/custom_referral_card.dart';
import 'package:mywallet/widget/member_details_card.dart';
import 'package:sizer/sizer.dart';

class ReferralScreen extends StatefulWidget {
  const ReferralScreen({super.key});

  @override
  State<ReferralScreen> createState() => _ReferralScreenState();
}

class _ReferralScreenState extends State<ReferralScreen> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Referral",
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(15)),
              child: Text(
                "Your Card Network",
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                customCountCard(
                  "Total card member",
                  75,
                ),
                customCountCard("Total non-card member", 177),
              ],
            ),
            SizedBox(
              height: 1.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                customCountCard("Total Lifeline Coin", 500),
                customCountCard("Total Monthly Card Limit", 2500),
              ],
            ),
            SizedBox(
              height: 1.h,
            ),
            customReferralCard(
              "Enter your Account Manager Code",
              "Enter Referral Code",
              controller1,
              "Update Code",
              Colors.green,
              () {},
            ),
            SizedBox(
              height: 1.h,
            ),
            customReferralCard(
              "Enter your Account Manager Code",
              "Enter Referral Code",
              controller2,
              "Verify Code",
              Colors.black,
              () {},
            ),
            SizedBox(
              height: 1.h,
            ),
            const Center(
              child: MemberDetailsCard(
                hasData: true,
                title: "Your Account Manager",
                name: "Satish Jayvant Kadam",
                joiningDate: "14/March/1992",
                totalCardMember: 75,
                totalNonCardMember: 177,
                isVip: true,
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            const Center(
              child: MemberDetailsCard(
                hasData: true,
                title: "Non VIP Member",
                name: "Satish Jayvant Kadam",
                joiningDate: "14/March/1992",
                totalCardMember: 75,
                totalNonCardMember: 177,
                isVip: false,
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            const Center(
              child: MemberDetailsCard(
                hasData: false,
              ),
            )
          ],
        ),
      ),
    );
  }
}
