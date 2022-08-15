import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screen/providers/botton_nav_bar_provider.dart';
import 'package:screen/widgets/botton_nav_bar_widget.dart';

class GeneralPage extends StatelessWidget {
  const GeneralPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<BottonNavigationBarProvider>(
        builder: (context, provider, _) => Scaffold(
              bottomNavigationBar: const BottonNavigationBarWidget(),
              body: provider.widgetsScreens.elementAt(provider.selectIndex),
            ));
  }
}
