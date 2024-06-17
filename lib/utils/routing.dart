import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../generated/l10n.dart';

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

class RouteAwareWidget extends StatefulWidget {
  final Widget child;

  const RouteAwareWidget({super.key, required this.child});

  @override
  RouteAwareWidgetState createState() => RouteAwareWidgetState();
}

class RouteAwareWidgetState extends State<RouteAwareWidget> with RouteAware {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final route = ModalRoute.of(context);
    if (route is PageRoute) {
      routeObserver.subscribe(this, route);
    }
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}

void navigateTo(BuildContext context, String routeName) {
  final currentRoute = ModalRoute.of(context)?.settings.name;
  if (currentRoute != routeName && !(currentRoute == '/' && routeName == '/home')) {
    setPageTitle(routeName, context);
    Navigator.pushNamed(context, routeName);
  }
}

void setPageTitle(String routeName, BuildContext context) {
  String title = switch(routeName) {
    '/home' => S.of(context).home,
    '/hobbies' => S.of(context).hobbies,
    _ => S.of(context).home,
  };

  SystemChrome.setApplicationSwitcherDescription(ApplicationSwitcherDescription(
    label: "${S.of(context).appTitle} - $title",
    primaryColor: Theme.of(context).primaryColor.value, // This line is required
  ));
}
