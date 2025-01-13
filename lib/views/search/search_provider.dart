import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchProvider = StateNotifierProvider<SearchNotifer, String>((ref) {
  return SearchNotifer();
});

class SearchNotifer extends StateNotifier<String> {
  SearchNotifer() : super('');

  void search(String value) {
    state = value;
  }
}
