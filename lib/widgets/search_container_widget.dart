import 'package:flutter/material.dart';

import '../core/consts/colors.dart';

import '../models/button_search_container_model.dart';
import '../models/white_background_container.dart';

class SearchContinerWidget extends StatelessWidget {
  const SearchContinerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuerySize = MediaQuery.of(context).size;
    return WhiteBackgraundContainer(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: mediaQuerySize.height * 0.02),
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
                          hintStyle: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(vertical: mediaQuerySize.height * 0.02),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                    padding: EdgeInsets.only(
                      left: mediaQuerySize.width * 0.06,
                    ),
                    child: ButtonSearchContainer(
                      mFunction: () {
                        print("sms");
                      },
                      mText: "SMS",
                      mColor: searchButtonColor,
                    )),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: ButtonSearchContainer(
                    mFunction: () {
                      print("MMS");
                    },
                    mText: "MMS",
                    mColor: selectedSearchButtonColor,
                  ),
                ),
                ButtonSearchContainer(
                  mFunction: () {
                    print("Voice");
                  },
                  mText: "Voice",
                  mColor: searchButtonColor,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
