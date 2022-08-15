import 'package:flutter/material.dart';

class ButtonSearchContainer extends StatelessWidget {
  Color mColor;
  String mText;
  GestureTapCallback mFunction;
  ButtonSearchContainer(
      {Key? key,
      required this.mColor,
      required this.mText,
      required this.mFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuerySize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: mFunction,
      child: Container(
        width: mediaQuerySize.width * 0.24,
        height: mediaQuerySize.height * 0.05,
        decoration: BoxDecoration(
            color: mColor,
            borderRadius: BorderRadius.all(Radius.circular(100))),
        child: Center(
            child: Text(
          mText,
          style: TextStyle(
              color: Colors.white, fontSize: mediaQuerySize.width * 0.05),
        )),
      ),
    );
  }
}
