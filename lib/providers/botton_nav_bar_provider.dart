import 'package:flutter/cupertino.dart';
import 'package:screen/screens/call_screen.dart';
import 'package:screen/screens/contacts_screen.dart';
import 'package:screen/screens/home_screen.dart';
import 'package:screen/screens/messages_screen.dart';

class BottonNavigationBarProvider with ChangeNotifier {
  int selectIndex = 0;
  List<Widget> widgetsScreens = [
    const HomeScreen(),
    const CallScreen(),
    const MessagesScreen(),
    const ContactsScreen(),
  ];

  void onItemTapped(int index) {
    selectIndex = index;
    notifyListeners();
  }
}
