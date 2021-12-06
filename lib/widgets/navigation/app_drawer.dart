import 'package:flutter/material.dart';
import 'package:gakushuu/constants/page_titles.dart';
import 'package:gakushuu/constants/route_names.dart';
import 'package:gakushuu/widgets/navigation/app_route_observer.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({required this.permanentlyDisplay, Key? key})
      : super(key: key);

  final bool permanentlyDisplay;

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> with RouteAware {
  String? _selectedRoute;
  AppRouteObserver? _routeObserver;

  @override
  void initState() {
    super.initState();
    _routeObserver = AppRouteObserver();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _routeObserver?.subscribe(this, ModalRoute.of(context) as PageRoute);
  }

  @override
  void dispose() {
    _routeObserver?.unsubscribe(this);
    super.dispose();
  }

  @override
  void didPush() {
    _updateSelectedRoute();
  }

  @override
  void didPop() {
    _updateSelectedRoute();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Row(
      children: [
        Expanded(
          child: ListView(padding: EdgeInsets.zero, children: [
            ListTile(
                leading: const Icon(Icons.dashboard),
                title: const Text(PageTitles.dashboard),
                onTap: () async {
                  await _navigateTo(context, RouteNames.dashboard);
                },
                selected: _selectedRoute == RouteNames.dashboard),
            ListTile(
                leading: const Icon(Icons.calendar_today),
                title: const Text(PageTitles.study),
                onTap: () async {
                  await _navigateTo(context, RouteNames.study);
                },
                selected: _selectedRoute == RouteNames.study),
            ListTile(
                leading: const Icon(Icons.manage_search),
                title: const Text(PageTitles.kanji),
                onTap: () async {
                  await _navigateTo(context, RouteNames.kanji);
                },
                selected: _selectedRoute == RouteNames.kanji),
            ListTile(
                leading: const Icon(Icons.book),
                title: const Text(PageTitles.dictionary),
                onTap: () async {
                  await _navigateTo(context, RouteNames.dictionary);
                },
                selected: _selectedRoute == RouteNames.dictionary),
          ]),
        ),
      ],
    ));
  }

  Future<void> _navigateTo(BuildContext context, String routeName) async {
    if (widget.permanentlyDisplay) {
      Navigator.pop(context);
    }

    await Navigator.pushNamed(context, routeName);
  }

  void _updateSelectedRoute() {
    setState(() {
      _selectedRoute = ModalRoute.of(context)?.settings.name;
    });
  }
}
