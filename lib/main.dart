// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:gakushuu/pages/dashboard_page.dart';
import 'package:gakushuu/pages/dictionary_page.dart';
import 'package:gakushuu/pages/kanji_page.dart';
import 'package:gakushuu/pages/study_page.dart';
import 'constants/app_constants.dart';
import 'constants/route_names.dart';
import 'widgets/navigation/app_route_observer.dart';

void main() => runApp(GakushuuApp());

class GakushuuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appTitle,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      initialRoute: RouteNames.dashboard,
      navigatorObservers: [AppRouteObserver()],
      routes: {
        RouteNames.dashboard: (_) => const DashboardPage(),
        RouteNames.study: (_) => const StudyPage(),
        RouteNames.kanji: (_) => const KanjiPage(),
        RouteNames.dictionary: (_) => const DictionaryPage(),
      },
    );
  }
}
