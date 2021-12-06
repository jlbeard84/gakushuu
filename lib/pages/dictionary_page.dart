import 'package:flutter/material.dart';
import 'package:gakushuu/constants/page_titles.dart';
import 'package:gakushuu/widgets/navigation/app_scaffold.dart';

class DictionaryPage extends StatelessWidget {
  const DictionaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      pageTitle: PageTitles.dictionary,
      body: Center(child: Text("Dictionary Page")),
    );
  }
}
