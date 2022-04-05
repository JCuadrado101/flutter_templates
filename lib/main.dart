import 'package:authentication_microservice/controllers/login_controller.dart';
import 'package:authentication_microservice/screens/main_app/main_app.dart';
import 'package:authentication_microservice/service/appwrite/appwrite_service.dart';
import 'package:authentication_microservice/service/provider/login_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppWriteService.instance.init();
  runApp(
    MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => LoginProvider()),],
      child: const MyApp()
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AuthMicroService(),
    );
  }
}

class AuthMicroService extends StatefulWidget {
  const AuthMicroService({Key? key}) : super(key: key);

  @override
  State<AuthMicroService> createState() => _AuthMicroServiceState();
}

class _AuthMicroServiceState extends State<AuthMicroService> {
  final _router = GoRouter(
    routes: [
      GoRoute(
        name: 'pageController',
        path: '/',
        pageBuilder: (context, state) => NoTransitionPage(
          key: state.pageKey,
          child: const LoginController(),
        ),
      ),
      GoRoute(
        name: 'mainApp',
        path: '/mainApp',
        pageBuilder: (context, state) => NoTransitionPage(
          key: state.pageKey,
          child: const MainApp(),
        ),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      debugShowCheckedModeBanner: false,
    );
  }
}


