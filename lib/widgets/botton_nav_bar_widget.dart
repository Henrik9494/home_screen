import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screen/providers/botton_nav_bar_provider.dart';

class BottonNavigationBarWidget extends StatelessWidget {
  const BottonNavigationBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<BottonNavigationBarProvider>(
        builder: (context, provider, _) {
      return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.black45,
        selectedItemColor: Colors.black87,
        backgroundColor: Colors.pink[50],
        currentIndex: provider.selectIndex,
        onTap: ((value) {
          provider.onItemTapped(value);
        }),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.call_outlined,
              ),
              label: "Call"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.mail_outline_sharp,
              ),
              label: "Messages"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline_outlined,
              ),
              label: "Contacts")
        ],
      );
    });
  }
}
