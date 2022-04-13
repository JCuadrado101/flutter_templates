import 'package:appwrite/appwrite.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';

import '../provider/login_provider.dart';

class AppWriteService {
  static final AppWriteService instance = AppWriteService._private();

  factory AppWriteService() {
    return instance;
  }

  AppWriteService._private();

  final client = Client();
  Account? account;
  Database? database;

  init() {
    client
        .setEndpoint('${dotenv.env['ENDPOINT']}')
        .setProject('${dotenv.env['PROJECT']}')
        .setSelfSigned();
    account = Account(client);
    database = Database(client);
  }

  Future<void> createSession(String email, String password, BuildContext context) async {
    try {
      final response = await account?.createSession(
        email: email,
        password: password,
      );
      return context.read<LoginProvider>().setSessionToken(response!.providerAccessToken);
    } on AppwriteException catch (e) {
      print(e.message);
    }
  }

  Future<void> deleteSession(BuildContext context) async {
    try {
      await account?.deleteSession(sessionId: 'current');
      return context.read<LoginProvider>().setSessionToken(null);
    } on AppwriteException catch (e) {
      print(e.message);
    }
  }
}
