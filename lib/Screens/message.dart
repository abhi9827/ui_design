import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:steps_indicator/steps_indicator.dart';
import 'package:ui_design/Screens/Bottom_homepage.dart';
import 'package:ui_design/Widgets/big_text.dart';
import 'package:ui_design/Widgets/medium_text.dart';
import 'package:ui_design/Widgets/small_text.dart';

import 'package:ui_design/utils/dimensions.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD1EDBF),
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.only(
                  left: Dimension.Edgeinsets15,
                  right: Dimension.Edgeinsets15,
                  top: Dimension.Edge50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Get.to(() => MainPage());
                    },
                    icon: Icon(Icons.code_outlined),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: Dimension.top130,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimension.Radius30),
                    topLeft: Radius.circular(Dimension.Radius30)),
                color: Color(0xFFFFFFFF),
              ),
              height: Dimension.Container1000,
              child: SafeArea(
                child: Padding(
                  padding: EdgeInsets.only(left: Dimension.size20),
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [BigText(text: 'Messaging ID')],
                        ),
                        SizedBox(
                          height: Dimension.Sizeboxheight20,
                        ),
                        Row(
                          children: [MediumText(text: 'Your daily plan')],
                        ),
                        SizedBox(
                          height: Dimension.Sizeboxheight10,
                        ),
                        //Steps Indicators
                        Row(
                          children: [
                            StepsIndicator(
                              selectedStep: 4,
                              nbSteps: 6,
                              selectedStepColorIn: Colors.black,
                              undoneLineColor: Colors.grey,
                              doneLineColor: Colors.black,
                              doneStepColor: Colors.black,
                              doneLineThickness: 5,
                              undoneLineThickness: 5,
                              unselectedStepColorIn: Colors.black,
                              doneStepWidget: Container(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [Smalltext(text: '4 of 6 completed')],
                        ),
                        SizedBox(
                          height: Dimension.Sizeboxheight20,
                        ),
                        // Detail About Tasks
                        Row(
                          children: <Widget>[
                            Container(
                              width: Dimension.containerwidth165,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    Dimension.CircularRadius10),
                                color: Color(0xFFFFE7AB),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(
                                        Dimension.CircularRadius10),
                                    child: MediumText(text: '17'),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: Dimension.Edge10),
                                        child: Icon(Icons.table_chart_rounded),
                                      ),
                                      SizedBox(
                                        width: Dimension.Sizeboxheight5,
                                      ),
                                      Smalltext(
                                        text: 'Tasks finished',
                                      )
                                    ],
                                  )
                                ],
                              ),
                              height: Dimension.Container80,
                            ),
                            SizedBox(
                              width: Dimension.Sizeboxheight20,
                            ),
                            Container(
                              width: Dimension.containerwidth165,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    Dimension.CircularRadius10),
                                color: Color(0xFFFFE7AB),
                              ),
                              height: Dimension.Container80,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(
                                        Dimension.CircularRadius10),
                                    child: MediumText(text: '3,2'),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: Dimension.Edge10),
                                        child: Icon(Icons.watch_later),
                                      ),
                                      SizedBox(
                                        width: Dimension.Sizeboxheight5,
                                      ),
                                      Smalltext(
                                        text: 'Tracked hours',
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: Dimension.Sizeboxheight20,
                        ),
                        //Task Overview
                        Row(
                          children: [
                            Row(
                              children: [
                                MediumText(text: 'Overview'),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: Dimension.Sizeboxheight20,
                        ),
                        // Overview Messages
                        Container(
                          height: Dimension.Container80,
                          // width: 400,
                          child: Column(
                            children: [
                              Expanded(
                                child: Smalltext(
                                  text:
                                      "Messaging ID framework development for the marketing branch and the publicity bureau and implemented a draft on the framework.",
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: Dimension.Sizeboxheight20,
                        ),
                        //Connected Members Photo
                        Row(
                          children: [MediumText(text: 'Members connected')],
                        ),
                        SizedBox(
                          height: Dimension.Sizeboxheight20,
                        ),
                        // Circle Avatar Photos
                        Container(
                          height: Dimension.Containerheight60,
                          child: ListView.builder(
                            itemCount: 3,
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.all(Dimension.Edgeinsetsall5),
                            itemBuilder: (BuildContext context, int index) {
                              return CircleAvatar(
                                radius: Dimension.Radius32,
                                backgroundImage: NetworkImage(
                                    'https://i.pravatar.cc/150?img=$index'),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
