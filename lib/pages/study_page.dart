import 'package:flutter/material.dart';
import 'package:gakushuu/constants/page_titles.dart';
import 'package:gakushuu/widgets/navigation/app_scaffold.dart';

class StudyPage extends StatelessWidget {
  const StudyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      pageTitle: PageTitles.study,
      body: Center(child: Text("Study Page")),
    );
  }
}
