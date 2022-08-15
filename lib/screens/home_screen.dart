import 'package:flutter/material.dart';
import 'package:screen/core/consts/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuerySize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: mediaQuerySize.width * 0.04),
        color: homeScreenBackgroundColor,
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: mediaQuerySize.height * 0.07,
                  bottom: mediaQuerySize.height * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: mediaQuerySize.width * 0.05,
                    backgroundImage: AssetImage("assets/images/person.jpg"),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.align_vertical_bottom_sharp,
                          color: selectedIconColor,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: mediaQuerySize.width * 0.04),
                        child: GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.mail_outline_sharp,
                            color: selectedIconColor,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.add_alert_outlined,
                          color: selectedIconColor,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              // width: 280,
              height: mediaQuerySize.height / 3,

              decoration: BoxDecoration(
                color: Color.fromARGB(255, 216, 213, 213),
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromARGB(255, 255, 255, 255),
                    Color.fromARGB(255, 255, 255, 255),
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 198, 164, 164),
                    offset: Offset(-5.0, -5.0),
                    blurRadius: 19,
                    spreadRadius: 0.0,
                  ),
                  BoxShadow(
                    color: Color.fromARGB(255, 198, 183, 183),
                    offset: Offset(5.0, 5.0),
                    blurRadius: 19,
                    spreadRadius: 0.0,
                  ),
                ],
              ),
            ),
            Text("Un st "),
            Container(
              height: mediaQuerySize.height / 3,
              color: Colors.white,
            ),
            Text("un king"),
            Container(
              height: mediaQuerySize.height / 3,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
