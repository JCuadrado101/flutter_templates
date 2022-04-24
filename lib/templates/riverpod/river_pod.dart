import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_templates/templates/riverpod/service/provider/counter.dart';
import 'package:go_router/go_router.dart';

class RiverPod extends ConsumerWidget {
  const RiverPod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RiverPod'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer(builder: (context, ref, _) {
              final count = ref.watch(counterProvider.state).state;
              return Text('$count', style: const TextStyle(fontSize: 30),);
            }),
          ],
        ),
      ),
      persistentFooterButtons: [
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: () => ref.read(counterProvider.state).state++,
        ),
        IconButton(
          icon: const Icon(Icons.remove),
          onPressed: () => ref.read(counterProvider.state).state--,
        ),
        ElevatedButton(
          onPressed: () => context.push('/riverPodTest'),
          child: const Text('Next Page')
        ),
      ],
    );
  }
}
