import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import '../../templates/authentication/mobile/controller/check_auth.dart';
import '../../templates/authentication/mobile/pages/login.dart';
import '../../templates/authentication/mobile/pages/sign_up.dart';
import '../../templates/riverpod/river_pod.dart';
import '../../templates/riverpod/river_pod_test.dart';
import '../../templates/templates.dart';
import '../../templates/theming/theme_change.dart';

List<GoRoute> templateRoutes() {
  return [
    GoRoute(
      name: 'templates',
      path: '/',
      builder: (BuildContext context, GoRouterState state) => const Templates(),
    ),
    GoRoute(
      name: 'checkAuth',
      path: '/checkAuth',
      builder: (BuildContext context, GoRouterState state) => const CheckAuth(),
    ),
    GoRoute(
      name: 'login',
      path: '/login',
      builder: (BuildContext context, GoRouterState state) => const Login(),
    ),
    GoRoute(
      name: 'signup',
      path: '/signup',
      builder: (BuildContext context, GoRouterState state) => const SignUp(),
    ),
    GoRoute(
      name: 'riverPod',
      path: '/riverPod',
      builder: (BuildContext context, GoRouterState state) => const RiverPod(),
    ),
    GoRoute(
      name: 'riverPodTest',
      path: '/riverPodTest',
      builder: (BuildContext context, GoRouterState state) => const RiverPodTest(),
    ),
    GoRoute(
      name: 'theming',
      path: '/theming',
      builder: (BuildContext context, GoRouterState state) => const Theming(),
    ),
  ];
}
