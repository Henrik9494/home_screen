import 'package:flutter/material.dart';
import 'package:screen/core/consts/colors.dart';

import '../widgets/search_container_widget.dart';
import '../widgets/united_states_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuerySize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: mediaQuerySize.width * 0.03),
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
                    backgroundImage:
                        const AssetImage("assets/images/person.jpg"),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.align_vertical_bottom_sharp,
                          color: selectedIconColor,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: mediaQuerySize.width * 0.04),
                        child: GestureDetector(
                          onTap: () {},
                          child: const Icon(
                            Icons.mail_outline_sharp,
                            color: selectedIconColor,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.add_alert_outlined,
                          color: selectedIconColor,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SearchContinerWidget(),
            const UnitedStatesContainer(),
            // WhiteBackgraundContainer(),
            // WhiteBackgraundContainer()
          ],
        ),
      ),
    );
  }
}
