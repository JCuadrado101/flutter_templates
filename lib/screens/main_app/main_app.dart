import 'package:appwrite/appwrite.dart';
import 'package:authentication_microservice/service/appwrite/appwrite_service.dart';
import 'package:flutter/material.dart';

import '../../service/api/get_account.dart';
import '../../service/setup/setup.dart';

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main App'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              AppWriteService.instance.deleteSession(context);
            },
          ),
        ],
      ),
      body: const Center(
        child: Text('Main App'),
      ),
    );
  }
}
