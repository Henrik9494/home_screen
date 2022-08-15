import 'package:flutter/material.dart';
import 'package:screen/core/consts/colors.dart';

import '../mdels/white_background_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuerySize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: mediaQuerySize.width * 0.05),
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
            WhiteBackgraundContainer(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 12.0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: mediaQuerySize.width * 0.06,
                          ),
                          child: Icon(
                            Icons.search,
                            color: selectedIconColor,
                          ),
                        ),
                        Flexible(
                          // width: 200,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: mediaQuerySize.width * 0.04),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Counyty name",
                                  hintStyle:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // WhiteBackgraundContainer(),
            // WhiteBackgraundContainer()
          ],
        ),
      ),
    );
  }
}
