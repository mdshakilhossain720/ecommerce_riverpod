import 'package:ecommerceriverpod/model/item.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final itemProvider = StateNotifierProvider<ItemNotifier, List<Item>>((ref) {
  return ItemNotifier();
});


class ItemNotifier extends StateNotifier<List<Item>> {
  ItemNotifier() : super([]);

  void addItem(String name) {
    final item=Item(name:name , id: DateTime.now().toString())

}}