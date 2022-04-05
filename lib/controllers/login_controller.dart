import 'package:authentication_microservice/screens/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../screens/main_app/main_app.dart';
import '../service/provider/login_provider.dart';

class LoginController extends StatelessWidget {
  const LoginController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final token = context.watch<LoginProvider>().sessionToken;
    if (token != null) return const MainApp();
    return const LoginPage();
  }
}
