import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counter = StateProvider<int>((ref) {
  return 0;
});

final switc = StateProvider<bool>((ref) {
  return false;
});

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Column(
        children: [
          Consumer(builder: (context, ref, child) {
            final count = ref.watch(counter);
            return Center(
              child: Text(
                count.toString(),
                style: const TextStyle(fontSize: 50),
              ),
            );
          }),
          const SizedBox(
            height: 50,
          ),
          Consumer(builder: (context, ref, child) {
            final count = ref.watch(switc);
            return Switch(
              value: ref.watch(switc),
              onChanged: (value) {
                ref.read(switc.notifier).state = value;
              },
            );
          }),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  ref.read(counter.notifier).state++;
                },
                child: const Text('+'),
              ),
              ElevatedButton(
                onPressed: () {
                  ref.read(counter.notifier).state--;
                },
                child: const Text('-'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
