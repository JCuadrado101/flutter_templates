import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../service/appwrite/appwrite_service.dart';

class SignUpField extends StatefulWidget {
  const SignUpField({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUpField> createState() => _SignUpFieldState();
}

class _SignUpFieldState extends State<SignUpField> {
  final _formKey = GlobalKey<FormState>();
  bool _isObscured = true;
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
                labelText: 'Enter Name',
                labelStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter a valid name.';
                }
                return null;
              },
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
                labelText: 'Enter Email',
                labelStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
              validator: (value) {
                if (value!.isEmpty || !value.contains('@')) {
                  return 'Please enter a valid email.';
                }
                return null;
              },
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextFormField(
              controller: _passwordController,
              obscureText: _isObscured,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isObscured ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _isObscured = !_isObscured;
                    });
                  },
                ),
                border: const OutlineInputBorder(),
                labelText: 'Create Password',
                labelStyle: const TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter a password.';
                }
                return null;
              },
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 180,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple,
                    padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 151
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      try {
                        await AppWriteService.instance.account?.create(
                          userId: 'unique()',
                          email: _emailController.text,
                          password: _passwordController.text,
                          name: _nameController.text,
                        );
                      } catch (e) {
                        print(e);
                      }

                    }
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('--------------------  '),
                    Text('or', style: TextStyle(color: Colors.black, fontSize: 18)),
                    Text('  --------------------'),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 130
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                        color: Colors.purple,
                        width: 2,
                      ),
                    ),
                  ),
                  onPressed: () => context.push('/login'),
                  child: const Text(
                    'Back to Login',
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
