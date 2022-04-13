import 'package:flutter/material.dart';
import 'package:flutter_templates/templates/authentication/pages/authentication.dart';
import 'package:flutter_templates/templates/templates.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _router = GoRouter(
    routes: [
      GoRoute(
        name: 'templates',
        path: '/',
        builder: (BuildContext context, GoRouterState state) => const Templates(),
      ),
      GoRoute(
        name: 'authentication',
        path: '/authentication',
        builder: (BuildContext context, GoRouterState state) => const Authentication(),
      ),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      title: 'Flutter Demo',
    );
  }
}
