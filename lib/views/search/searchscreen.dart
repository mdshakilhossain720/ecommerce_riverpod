import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'search_provider.dart';

class Searchscreen extends ConsumerWidget {
  const Searchscreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final search =ref.watch(searchProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                ref.read(searchProvider.notifier).search(value);
              },
              decoration: const InputDecoration(
                hintText: 'Search',
                border: OutlineInputBorder(),
              ),
            ),

            Consumer(builder: (context, ref, child) {
              final search = ref.watch(searchProvider);
              return Text(search.search);
            })
          ],
        ),
      ),
    );
  }
}
