import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_templates/templates/riverpod/service/provider/counter.dart';

class RiverPodTest extends ConsumerWidget {
  const RiverPodTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RiverPod Test'),
      ),
      body: Center(
        child: Consumer(builder: (context, ref, _) {
          final count = ref.watch(counterProvider.state).state;
          return Text('$count');
        }),
      ),
      persistentFooterButtons: [
        IconButton(
          onPressed: () => ref.read(counterProvider.state).state++,
          icon: const Icon(Icons.add),
        ),
        IconButton(
          onPressed: () => ref.read(counterProvider.state).state--,
          icon: const Icon(Icons.remove),
        ),
      ],
    );
  }
}
