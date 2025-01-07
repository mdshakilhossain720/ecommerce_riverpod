import 'package:ecommerceriverpod/model/item.dart';

class FavoutState {
  final List<Item> allItem;
  final List<Item> fiterItemn;
  final String sesarch;
  FavoutState({
    required this.allItem,
    required this.fiterItemn,
    required this.sesarch,
  });

  FavoutState copyWith({
    List<Item>? allItem,
    List<Item>? fiterItemn,
    String? sesarch,
  }) {
    return FavoutState(
      allItem: allItem ?? this.allItem,
      fiterItemn: fiterItemn ?? this.fiterItemn,
      sesarch: sesarch ?? this.sesarch,
    );
  }
}
