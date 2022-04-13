import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_templates/templates/authentication/mobile/pages/auth.dart';
import 'package:flutter_templates/templates/authentication/mobile/pages/login.dart';
import 'package:flutter_templates/templates/authentication/mobile/pages/sign_up.dart';
import 'package:flutter_templates/templates/authentication/service/appwrite/appwrite_service.dart';
import 'package:flutter_templates/templates/authentication/service/provider/login_provider.dart';
import 'package:flutter_templates/templates/templates.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppWriteService.instance.init();
  // await dotenv.load(fileName: 'assets/env/env');
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => LoginProvider()),],
      child: const MyApp()
    )
  );
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
