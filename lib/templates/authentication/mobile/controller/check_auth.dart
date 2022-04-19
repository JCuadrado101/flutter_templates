import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../service/provider/login_provider.dart';
import '../pages/auth.dart';
import '../pages/success.dart';

class CheckAuth extends StatelessWidget {
  const CheckAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final session = context.watch<LoginProvider>().sessionToken;
    if (session != null) { const Success(); }
    return const Authentication();
  }
}
