import 'package:flutter/material.dart';
import '../service/appwrite/appwrite_service.dart';


class AuthController extends StatefulWidget {
  const AuthController({
    Key? key,
  }) : super(key: key);

  @override
  State<AuthController> createState() => _AuthControllerState();
}

class _AuthControllerState extends State<AuthController> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: _emailController,
            decoration: const InputDecoration(
              labelText: 'Email',
              labelStyle: TextStyle(color: Colors.grey),
            ),
          ),
          TextFormField(
            controller: _passwordController,
            decoration: const InputDecoration(
              labelText: 'Password',
              labelStyle: TextStyle(color: Colors.grey),
            ),
          ),
          const SizedBox(height: 30),
          TextButton(
            onPressed: () {},
            child: const Text('Forgot Password?', style: TextStyle(color: Colors.grey),),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Sign Up', style: TextStyle(color: Colors.grey),),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () async {
              await AppWriteService.instance.createSession(_emailController.text, _passwordController.text, context);
            },
            child: const Text('Login'),
          ),
          const SizedBox(height: 30),
          const Text('Continue with social media', style: TextStyle(color: Colors.grey)),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Facebook'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Github'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
