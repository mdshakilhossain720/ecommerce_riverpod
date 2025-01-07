import 'package:ecommerceriverpod/controller/favout_state.dart';
import 'package:ecommerceriverpod/model/item.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final favourtProvider = StateNotifierProvider<FavoutiteNotifier, FavoutState>(
    (ref) => FavoutiteNotifier());

class FavoutiteNotifier extends StateNotifier<FavoutState> {
  FavoutiteNotifier()
      : super(FavoutState(allItem: [], fiterItemn: [], sesarch: ''));
  void addItem() {
    List<Item> item = [
      Item(name: "mackbook", id: 1, favourite: true),
      Item(name: "mackbook", id: 2, favourite: true),
      Item(name: "mackbook", id: 4, favourite: true),
      Item(name: 'Phone', id: 3, favourite: false),
    ];
    state = state.copyWith(allItem: item.toList(), fiterItemn: item.toList());
  }

  void filter(String search) {
    state = state.copyWith(
      fiterItemn: _filterItems(state.allItem, search),
    );
  }

  List<Item> _filterItems(List<Item> item, String search) {
    if (search.isEmpty) {
      return item;
    }

    return item
        .where((item) => item.name.toLowerCase().contains(search.toLowerCase()))
        .toList();
  }
}
