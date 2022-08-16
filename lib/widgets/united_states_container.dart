import 'package:flutter/material.dart';

import '../models/users_phone_numbers_model.dart';
import '../models/white_background_container.dart';

class UnitedStatesContainer extends StatelessWidget {
  const UnitedStatesContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuerySize = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: mediaQuerySize.height * 0.03),
          child: Row(
            children: [
              Container(
                height: mediaQuerySize.height * 0.04,
                width: mediaQuerySize.width * 0.11,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                        image: AssetImage("assets/images/download.png"))),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  "Uniteed States",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            ],
          ),
        ),
        WhiteBackgraundContainer(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                UsersPhoneNumberListModel(
                  phoneNumber: '+1(201123-45-67)',
                  regions: 'New Jersey',
                  functionOnTapInSms: () {
                    debugPrint("Sms Circle Button");
                  },
                  functionOnTapInvoise: () {
                    debugPrint("voice Circle Button");
                  },
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}



//  trailing: Wrap(
//                     spacing: 12, // space between two icons
//                     children: [
//                       CircleButtonModel(
//                         circleButtonText: "S",
//                         functionOnTap: () {
//                           debugPrint("SMS Circle Button");
//                         },
//                       ), // icon-1
//                       CircleButtonModel(
//                         circleButtonText: "V",
//                         functionOnTap: () {
//                           debugPrint("Voise Circle Button");
//                         },
//                       ), // // icon-2
//                     ],
//                   ),