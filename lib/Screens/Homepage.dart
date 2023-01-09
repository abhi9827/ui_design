import 'package:flutter/material.dart';
import 'package:ui_design/Widgets/medium_text.dart';
import 'package:ui_design/Widgets/small_text.dart';
import 'package:ui_design/utils/dimensions.dart';

import '../Widgets/big_text.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF4F2),
      body: Stack(
        children: [
          //Searchbar and Last Connected part
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: Dimension.Egdeinsetsvertical20),
              child: Container(
                height: Dimension.height415,
                child: Padding(
                  padding: EdgeInsets.all(Dimension.PaddingEdgeall20),
                  child: Column(
                    children: [
                      // Top Circle Avatar and notification Icon
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage("Assets/images/A.png"),
                                radius: Dimension.Radius25,
                              ),
                              SizedBox(
                                width: Dimension.Sizeboxwidth10,
                              ),
                              Text("Hi, Kira!"),
                            ],
                          ),
                          IconButton(
                            iconSize: Dimension.Iconsize30,
                            onPressed: () {},
                            icon: Icon(Icons.notifications),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Dimension.Sizeboxheight10,
                      ),
                      Row(
                        children: [
                          BigText(
                            text: "Task for Today:",
                            color: Colors.black,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            width: Dimension.Sizeboxwidth10,
                          ),
                          MediumText(
                            text: "5 available",
                            size: Dimension.size15,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Dimension.Sizeboxheight10,
                      ),
                      //Search Box
                      Container(
                        height: Dimension.searchheight70,
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide.none),
                            hintText: 'Search',
                            hintStyle: TextStyle(
                                color: Colors.grey, fontSize: Dimension.font18),
                            suffixIcon: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Dimension.Sizeboxheight20,
                      ),
                      //
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MediumText(
                            text: "Last connections",
                          ),
                          Smalltext(text: "See all")
                        ],
                      ),
                      SizedBox(
                        height: Dimension.Sizeboxheight10,
                      ),
                      //Circle Avatar Photos
                      Container(
                        height: Dimension.Containerheight60,
                        child: ListView.builder(
                          itemCount: 8,
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
                      SizedBox(
                        height: Dimension.Sizeboxheight20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          //Active Projects part
          Positioned(
            left: 0,
            right: 0,
            top: Dimension.positiontopheight390,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimension.Radius30),
                      topLeft: Radius.circular(Dimension.Radius30)),
                  color: Color(0xFFFFFFFF)),
              height: Dimension.height500,
              child: SafeArea(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: Dimension.Edgeinsets25,
                          right: Dimension.Edgeinsets25,
                          top: Dimension.Edgeinsets15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MediumText(text: 'Active projects'),
                          Smalltext(text: 'See all')
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Dimension.Sizeboxheight10,
                    ),
                    // Scroallable Containers
                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          height: Dimension.scroablecontainer275,
                          child: Padding(
                            padding: EdgeInsets.all(Dimension.PaddingEdgeall20),
                            child: ListView(
                              children: [
                                Container(
                                  height: Dimension.scroablecontainer145,
                                  margin: EdgeInsets.only(
                                      left: Dimension.size20,
                                      right: Dimension.size20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        Dimension.CircularRadius10),
                                    border: Border.all(width: 0.3),
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(
                                        Dimension.Edgeinsetsall22),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Smalltext(text: 'Numero 10'),
                                            Smalltext(text: '4h')
                                          ],
                                        ),
                                        SizedBox(
                                          height: Dimension.Sizeboxheight5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            MediumText(
                                                text: 'Blog and Social posts'),
                                          ],
                                        ),
                                        SizedBox(
                                          height: Dimension.Sizeboxheight10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(Icons.error_outline_outlined),
                                            Smalltext(text: 'Deadline is Today')
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: Dimension.Sizeboxheight10,
                                ),
                                Container(
                                  height: Dimension.scroablecontainer145,
                                  margin: EdgeInsets.only(
                                      left: Dimension.size20,
                                      right: Dimension.size20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        Dimension.CircularRadius10),
                                    border: Border.all(width: 0.3),
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(
                                        Dimension.Edgeinsetsall22),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Smalltext(text: 'Numero 10'),
                                            Smalltext(text: '4h')
                                          ],
                                        ),
                                        SizedBox(
                                          height: Dimension.Sizeboxheight5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            MediumText(
                                                text: 'Blog and Social posts'),
                                          ],
                                        ),
                                        SizedBox(
                                          height: Dimension.Sizeboxheight10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(Icons.error_outline_outlined),
                                            Smalltext(text: 'Deadline is Today')
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: Dimension.Sizeboxheight10,
                                ),
                                Container(
                                  height: Dimension.scroablecontainer145,
                                  margin: EdgeInsets.only(
                                      left: Dimension.size20,
                                      right: Dimension.size20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        Dimension.CircularRadius10),
                                    border: Border.all(width: 0.3),
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(
                                        Dimension.Edgeinsetsall22),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Smalltext(text: 'Numero 10'),
                                            Smalltext(text: '4h')
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            MediumText(
                                                text: 'Blog and Social posts'),
                                          ],
                                        ),
                                        SizedBox(
                                          height: Dimension.Sizeboxheight10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(Icons.error_outline_outlined),
                                            Smalltext(text: 'Deadline is Today')
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: Dimension.Sizeboxheight10,
                                ),
                                Container(
                                  height: Dimension.scroablecontainer145,
                                  margin: EdgeInsets.only(
                                      left: Dimension.size20,
                                      right: Dimension.size20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        Dimension.CircularRadius10),
                                    border: Border.all(width: 0.3),
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(
                                        Dimension.Edgeinsetsall22),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Smalltext(text: 'Numero 10'),
                                            Smalltext(text: '4h')
                                          ],
                                        ),
                                        SizedBox(
                                          height: Dimension.Sizeboxheight5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            MediumText(
                                                text: 'Blog and Social posts'),
                                          ],
                                        ),
                                        SizedBox(
                                          height: Dimension.Sizeboxheight10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(Icons.error_outline_outlined),
                                            Smalltext(text: 'Deadline is Today')
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: Dimension.Sizeboxheight10,
                                ),
                                Container(
                                  height: Dimension.scroablecontainer145,
                                  margin: EdgeInsets.only(
                                      left: Dimension.size20,
                                      right: Dimension.size20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        Dimension.CircularRadius10),
                                    border: Border.all(width: 0.3),
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.all(Dimension.Edgeinsets25),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Smalltext(text: 'Numero 10'),
                                            Smalltext(text: '4h')
                                          ],
                                        ),
                                        SizedBox(
                                          height: Dimension.Sizeboxheight5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            MediumText(
                                                text: 'Blog and Social posts'),
                                          ],
                                        ),
                                        SizedBox(
                                          height: Dimension.Sizeboxheight10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(Icons.error_outline_outlined),
                                            Smalltext(text: 'Deadline is Today')
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: Dimension.Sizeboxheight10,
                                ),
                                Container(
                                  height: Dimension.scroablecontainer145,
                                  margin: EdgeInsets.only(
                                      left: Dimension.size20,
                                      right: Dimension.size20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        Dimension.CircularRadius10),
                                    border: Border.all(width: 0.3),
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.all(Dimension.Edgeinsets25),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Smalltext(text: 'Numero 10'),
                                            Smalltext(text: '4h')
                                          ],
                                        ),
                                        SizedBox(
                                          height: Dimension.Sizeboxheight5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            MediumText(
                                                text: 'Blog and Social posts'),
                                          ],
                                        ),
                                        SizedBox(
                                          height: Dimension.Sizeboxheight10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(Icons.error_outline_outlined),
                                            Smalltext(text: 'Deadline is Today')
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
