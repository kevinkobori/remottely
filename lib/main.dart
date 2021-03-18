import 'package:flutter/material.dart';
import 'package:remottely/widgets/router/user_router_delegate.dart';
import 'package:remottely/widgets/router/user_route_information_parser.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  UserRouterDelegate _routerDelegate = UserRouterDelegate();
  UserRouteInformationParser _routeInformationParser =
      UserRouteInformationParser();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Remottely',
      routerDelegate: _routerDelegate,
      routeInformationParser: _routeInformationParser,
    );
  }
}