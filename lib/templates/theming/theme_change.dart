import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_templates/main.dart';

class Theming extends ConsumerWidget {
  const Theming({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theming'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () => ref.read(colorProvider.state).state = 0,
              child: const Text('Theme 1'),
            ),
            ElevatedButton(
              onPressed: () => ref.read(colorProvider.state).state = 1,
              child: const Text('Theme 2'),
            ),
            ElevatedButton(
              onPressed: () => ref.read(colorProvider.state).state = 2,
              child: const Text('Theme 3'),
            ),
            const Text('Change your system light/dark mode to see the effects')
          ],
        ),
      ),
    );
  }
}
