import 'package:flutter/material.dart';

import '../core/consts/colors.dart';

import '../models/button_search_container_model.dart';
import '../models/white_background_container.dart';

class SearchContinerWidget extends StatelessWidget {
  SearchContinerWidget({Key? key}) : super(key: key);
  String dropdownValue = 'Landline or Mobile';

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
                  child: const Icon(
                    Icons.search,
                    color: selectedIconColor,
                  ),
                ),
                Flexible(
                  // width: 200,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: mediaQuerySize.width * 0.04),
                    child: const TextField(
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
                        debugPrint("sms");
                      },
                      mText: "SMS",
                      mColor: searchButtonColor,
                    )),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: mediaQuerySize.width * 0.04),
                  child: ButtonSearchContainer(
                    mFunction: () {
                      debugPrint("MMS");
                    },
                    mText: "MMS",
                    mColor: selectedSearchButtonColor,
                  ),
                ),
                ButtonSearchContainer(
                  mFunction: () {
                    debugPrint("Voice");
                  },
                  mText: "Voice",
                  mColor: searchButtonColor,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: mediaQuerySize.height * 0.02),
            child: Container(
              height: mediaQuerySize.height * 0.054,
              width: mediaQuerySize.width * 0.82,
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: DropdownButton(
                  borderRadius: BorderRadius.circular(20),
                  value: dropdownValue,
                  icon: Padding(
                    padding: EdgeInsets.only(left: mediaQuerySize.width * 0.4),
                    child: const Icon(Icons.arrow_drop_down),
                  ),
                  elevation: 16,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: searchButtonColor),
                  onChanged: (String? value) {
                    dropdownValue = value!;
                  },
                  items: <String>[
                    'Landline or Mobile',
                    'test',
                    'test2',
                    'test3'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: mediaQuerySize.width * 0.06),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: mediaQuerySize.width * 0.06,
                      right: mediaQuerySize.width * 0.04),
                  child: Container(
                    height: mediaQuerySize.width * 0.08,
                    width: mediaQuerySize.width * 0.08,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(Icons.arrow_drop_down),
                  ),
                ),
                Text(
                  "Show numbers without verification",
                  style: TextStyle(
                      color: searchButtonColor,
                      fontSize: mediaQuerySize.width * 0.04),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
