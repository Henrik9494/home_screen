import 'package:flutter/material.dart';

class WhiteBackgraundContainer extends StatelessWidget {
  Widget? child;
  WhiteBackgraundContainer({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 280,
      // height: 500,

      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 216, 213, 213),
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 255, 255, 255),
            Color.fromARGB(255, 255, 255, 255),
          ],
        ),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 198, 164, 164),
            offset: Offset(2.0, 2.0),
            blurRadius: 19,
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: child,
    );
  }
}
