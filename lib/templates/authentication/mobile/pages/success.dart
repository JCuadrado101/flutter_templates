import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../service/appwrite/appwrite_service.dart';

class Success extends ConsumerWidget {
  const Success({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Success'),
      ),
      body: Consumer(
        builder: (context, ref, _) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Login Success'),
                TextButton(
                  onPressed: () {
                    AppWriteService.instance.deleteSession(context, ref);
                  },
                  child: const Text('logout'),
                ),
              ],
            ),
          );
        }
      )
    );
  }
}
