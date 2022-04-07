// import 'package:appwrite/appwrite.dart';
// import 'package:flutter/cupertino.dart';
// import '../provider/login_provider.dart';
// import '../setup/setup.dart';
// import 'package:provider/provider.dart';
//
// Future<void> loginUser(String? email, String? password, BuildContext context) async {
//   try {
//     final response = await getIt<Account>().createSession(
//       email: email!,
//       password: password!,
//     );
//     return context.read<LoginProvider>().setLoggedIn(true);
//   } catch (error) {
//     return context.read<LoginProvider>().setLoggedIn(false);
//   }
// }
