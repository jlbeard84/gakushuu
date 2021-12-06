import 'package:flutter/material.dart';
import 'package:gakushuu/constants/page_titles.dart';
import 'package:gakushuu/widgets/navigation/app_scaffold.dart';

class KanjiPage extends StatelessWidget {
  const KanjiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      pageTitle: PageTitles.kanji,
      body: Center(child: Text("Kanji Page")),
    );
  }
}
