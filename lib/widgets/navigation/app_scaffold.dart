import 'package:flutter/material.dart';
import 'package:gakushuu/constants/app_constants.dart';

import 'app_drawer.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({required this.body, required this.pageTitle, Key? key})
      : super(key: key);

  final Widget body;
  final String pageTitle;

  @override
  Widget build(BuildContext context) {
    final bool displayMobileLayout =
        MediaQuery.of(context).size.width < AppConstants.mobileScreenMenuCutoff;

    return Row(
      children: [
        if (!displayMobileLayout)
          const AppDrawer(
            permanentlyDisplay: true,
          ),
        Expanded(
            child: Scaffold(
                appBar: AppBar(
                    automaticallyImplyLeading: displayMobileLayout,
                    title: Text(pageTitle)),
                drawer: displayMobileLayout
                    ? const AppDrawer(permanentlyDisplay: false)
                    : null,
                body: body))
      ],
    );
  }
}
