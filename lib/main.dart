import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_templates/service/routes/gorouter.dart';
import 'package:flutter_templates/templates/authentication/service/appwrite/appwrite_service.dart';
import 'package:flutter_templates/templates/theming/theme.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final colorProvider = StateProvider((ref) => 0);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: 'assets/environment/env');
  await AppWriteService.instance.init();
  runApp(
    const ProviderScope(
      child: MyApp()
    )
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _router = GoRouter(routes: templateRoutes());
    return Consumer(
      builder: (context, ref, _) {
        final colorIndex = ref.watch(colorProvider);
        return MaterialApp.router(
          routeInformationParser: _router.routeInformationParser,
          routerDelegate: _router.routerDelegate,
          title: 'Templates',
            theme: colorIndex == 0 ? buildThemeData1() :
          colorIndex == 1 ? buildThemeData2() :
          buildThemeData3(),
        );
      },
    );
  }
}
