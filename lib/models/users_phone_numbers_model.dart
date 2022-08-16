import 'package:flutter/material.dart';
import 'package:screen/core/consts/colors.dart';
import 'package:screen/models/circle_button_model.dart';

class UsersPhoneNumberListModel extends StatelessWidget {
  String phoneNumber;
  String regions;
  GestureTapCallback functionOnTapInSms;
  GestureTapCallback functionOnTapInvoise;
  UsersPhoneNumberListModel(
      {Key? key,
      required this.phoneNumber,
      required this.regions,
      required this.functionOnTapInSms,
      required this.functionOnTapInvoise})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Padding(
        padding: EdgeInsets.only(
          top: 8.0,
        ),
        child: Icon(
          Icons.phone_android,
          color: selectedIconColor,
        ),
      ),
      trailing: Wrap(
        spacing: 4, // space between two icons
        children: [
          CircleButtonModel(
            circleButtonText: "S",
            functionOnTap: functionOnTapInSms,
          ), // icon-1
          CircleButtonModel(
              circleButtonText: "V",
              functionOnTap: functionOnTapInvoise), // // icon-2
        ],
      ),
      horizontalTitleGap: 2,
      title: Text(
        phoneNumber,
        style: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
      ),
      subtitle: Text(
        regions,
        style: const TextStyle(
            fontWeight: FontWeight.w400,
            // fontSize: 20,
            color: Colors.black),
      ),
    );
  }
}
