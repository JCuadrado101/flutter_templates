import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../controller/auth_field.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.purple,
              Colors.blue,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            IconButton(
              onPressed: () => context.pop(),
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Welcome Back', style: TextStyle(color: Colors.white, fontSize: 18),),
                  SizedBox(height: 10),
                  Text('Login', style: TextStyle(color: Colors.white, fontSize: 40),),
                ],
              ),
            ),
            const SizedBox(height: 100),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)
                    ),
                  ),
                  child: const AuthField(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
