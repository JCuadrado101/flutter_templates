import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../service/provider/login_provider.dart';
import '../pages/auth.dart';
import '../pages/success.dart';

class CheckAuth extends ConsumerWidget {
  const CheckAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Consumer(builder: (context, ref, _) {
      final session = ref.watch(loginProvider.state).state == '';
      if (!session) return const Success();
      return const Authentication();
    });
  }
}
