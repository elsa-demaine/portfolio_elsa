import 'package:flutter/services.dart';
import 'package:portfolio_elsa/all.dart';

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
    '/home' => S.current.home,
    '/hobbies' => S.current.hobbies,
    _ => S.current.home,
  };

  SystemChrome.setApplicationSwitcherDescription(ApplicationSwitcherDescription(
    label: "${S.current.appTitle} - $title",
    primaryColor: context.colorScheme.primary.value, // This line is required
  ));
}
