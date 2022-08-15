import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screen/providers/botton_nav_bar_provider.dart';
import 'package:screen/widgets/general_page_in_app.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => BottonNavigationBarProvider(),
      )
    ],
    child: const StartApp(),
  ));
}

class StartApp extends StatelessWidget {
  const StartApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GeneralPage(),
    );
  }
}
