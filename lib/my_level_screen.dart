import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyLevelScreen extends StatelessWidget {
  const MyLevelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: Text(
                  "My Level",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 70.0, bottom: 70),
                      child: Center(
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.white),
                                color: Colors.purple,
                              ),
                              width: 90.w,
                              child: Center(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 6.5.h,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Lv0",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 0.8.h,
                                            width: 65.w,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          "Lv1",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            const Center(
                              child: Text(
                                "Level Rule",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              width: 96.w,
                              decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  width: 1,
                                  color: Colors.grey,
                                ),
                              ),
                              child: Column(
                                children: [
                                  //Level Rule 1st Row
                                  SizedBox(
                                    height: 45,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        _levelTableHead("Level"),
                                        VerticalDivider(
                                          color: Colors.white,
                                        ),
                                        _levelTableHead("Lifeline Coin"),
                                      ],
                                    ),
                                  ),

                                  const Divider(
                                    color: Colors.white,
                                  ),

                                  _levelTableRowHolder(),

                                  const Divider(
                                    color: Colors.white,
                                  ),

                                  _levelTableRowHolder(),

                                  const Divider(
                                    color: Colors.white,
                                  ),

                                  _levelTableRowHolder(),

                                  const Divider(
                                    color: Colors.white,
                                  ),

                                  _levelTableRowHolder(),

                                  const Divider(
                                    color: Colors.white,
                                  ),

                                  _levelTableRowHolder(),

                                  const Divider(
                                    color: Colors.white,
                                  ),

                                  _levelTableRowHolder(),

                                  const Divider(
                                    color: Colors.white,
                                  ),

                                  _levelTableRowHolder(),

                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Image.asset(
                            "assets/myLevelHeader.png",
                            height: 120,
                            fit: BoxFit.fill,
                          ),
                        ),

                        Container(
                          padding: const EdgeInsets.only(top: 4),
                          width: 65.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/level1.png",
                                height: 35,
                                fit: BoxFit.fill,
                              ),
                              Image.asset(
                                "assets/levelx.png",
                                height: 35,
                                fit: BoxFit.fill,
                              ),
                              Image.asset(
                                "assets/levelx.png",
                                height: 35,
                                fit: BoxFit.fill,
                              ),
                              Image.asset(
                                "assets/levelx.png",
                                height: 35,
                                fit: BoxFit.fill,
                              ),
                              Image.asset(
                                "assets/levelx.png",
                                height: 35,
                                fit: BoxFit.fill,
                              ),
                              Image.asset(
                                "assets/levelx.png",
                                height: 35,
                                fit: BoxFit.fill,
                              ),
                              Image.asset(
                                "assets/levelx.png",
                                height: 35,
                                fit: BoxFit.fill,
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 1.h,
                        ),

                        //Title 1
                        Center(
                          child: Container(
                            height: 4.5.h,
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(8)),
                            alignment: Alignment.center,
                            width: 80.w,
                            child: Text(
                              "Get 77 Lifeline coin more to Level up",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18.sp),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),

                        //Active Rewards Section
                        Center(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(8)),
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
                                        borderRadius: BorderRadius.circular(8)),
                                    alignment: Alignment.center,
                                    width: 75.w,
                                    child: Text(
                                      "Active Rewards",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.sp),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  _activeRewardsRow("assets/level1.png"),
                                  _activeRewardsRow("assets/level2.png"),
                                  _activeRewardsRow("assets/level3.png"),
                                ],
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 11.h,
                        ),


                        _levelTableRow(1, "Freelance Brand Ambassador", 100),
                        _levelTableRow(2, "Freelance Brand Ambassador", 500),
                        _levelTableRow(3, "Freelance Brand Ambassador", 1000),
                        _levelTableRow(4, "Freelance Brand Ambassador", 2000),
                        _levelTableRow(5, "Freelance Senior Marketing", 5000),
                        _levelTableRow(6, "District Marketing Manager", 10000),
                        _levelTableRow(7, "General Marketing Manager", 50000),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _levelTableRowHolder() {

    return SizedBox(
      height: 44,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
              width: 43.5.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(),
            ),
          ),
          const VerticalDivider(color: Colors.white),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
              width: 43.5.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _levelTableRow(int index, String title, int lifeCoinCount) {
    List<Color> gradientColors = [
      Colors.amber.shade900,
      Colors.deepOrange.shade900,
      Colors.red.shade800,
      Colors.red.shade900,
      Colors.purple.shade900,
      Colors.indigo.shade800,
      Colors.teal.shade900,
      Colors.green.shade900,
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 8.0, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 2.0),
            child: Container(
              padding: const EdgeInsets.only(left: 2.0),
              alignment: Alignment.centerRight,
              width: 45.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: gradientColors[index-1],
              ),
              child: Row(
                children: [
                  Text(
                    "$index) ",
                    style: const TextStyle(
                        color: Colors.white, fontSize: 16),
                  ),
                  Container(
                    padding:
                    const EdgeInsets.only(left: 2.0),
                    alignment: Alignment.centerRight,
                    width: 40.w,
                    child: Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 2.0),
            child: Container(
              padding: const EdgeInsets.only(left: 2.0),
              alignment: Alignment.centerRight,
              width: 45.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: gradientColors[index-1],
              ),
              child: Row(
                children: [
                  Container(
                    padding:
                    const EdgeInsets.only(left: 2.0),
                    width: 38.w,
                    height: 5.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "$lifeCoinCount",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16),
                        ),
                        Image.asset("assets/crown.png", height: 20,),
                      ],
                    ),
                  ),
                  const Icon(Icons.arrow_drop_down_circle_outlined, size: 20,color: Colors.white,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _levelTableHead(String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
        width: 35.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey,
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
      ),
    );
  }

  Widget _activeRewardsRow(String levelImg) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                levelImg,
                height: 2.h,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "No Active Rewards",
                style: TextStyle(
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text(
              "Claim Now",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          )
        ],
      ),
    );
  }
}
