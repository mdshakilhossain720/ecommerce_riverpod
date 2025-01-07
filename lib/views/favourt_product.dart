import 'package:ecommerceriverpod/controller/favourt_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavourtProduct extends ConsumerWidget {
  const FavourtProduct({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favouritelist = ref.watch(favourtProvider);
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ref.read(favourtProvider.notifier).addItem();
          },
          child: const Icon(Icons.add),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            TextField(
              decoration: const InputDecoration(
                hintText: 'search',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                ref.read(favourtProvider.notifier).filter(value);
              },
            ),
            Expanded(
                child: ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: favouritelist.fiterItemn.length,
                    itemBuilder: (context, index) {
                      final item = favouritelist.fiterItemn[index];
                      return ListTile(
                        title: Text(item.name),
                        trailing: Icon(item.favourite
                            ? Icons.favorite
                            : Icons.favorite_border),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
