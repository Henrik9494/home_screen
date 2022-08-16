import 'package:flutter/material.dart';
import 'package:screen/core/consts/colors.dart';

class CircleButtonModel extends StatelessWidget {
  String circleButtonText;
  GestureTapCallback functionOnTap;
  CircleButtonModel(
      {Key? key, required this.circleButtonText, required this.functionOnTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: functionOnTap,
      child: CircleAvatar(
        radius: MediaQuery.of(context).size.height * 0.013,
        backgroundColor: searchButtonColor,
        child: Text(
          circleButtonText,
          style: const TextStyle(
              color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
