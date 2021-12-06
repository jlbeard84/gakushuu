import 'package:flutter/material.dart';
import 'package:gakushuu/constants/page_titles.dart';
import 'package:gakushuu/widgets/navigation/app_scaffold.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      pageTitle: PageTitles.dashboard,
      body: Center(child: Text("Dashboard Page")),
    );
  }
}
