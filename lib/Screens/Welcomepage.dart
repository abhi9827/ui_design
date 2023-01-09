import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_design/Screens/Bottom_homepage.dart';
import 'package:ui_design/utils/dimensions.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD1EDBF),
      body: SafeArea(
        child: Container(
          height: 1000,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage('Assets/images/A.png'),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(bottom: Dimension.bottompadding30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Get.to(() => MainPage());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimension.CircularRadius10),
                        color: Colors.black),
                    height: Dimension.WelcomeContainerheight70,
                    width: Dimension.WelcomeContainerwidth320,
                    // color: Colors.black,
                    child: const Center(
                      child: Text(
                        "Get free trial",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
