import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchProvider = StateNotifierProvider<SearchNotifer, SearchState>((ref) {
  return SearchNotifer();
});

class SearchNotifer extends StateNotifier<SearchState> {
  SearchNotifer() : super(SearchState(search: '', isChange:false));

  void search(String value) {
    state = state.copyWith(search: value);
  }
  
  void isChange(bool value) {
    state = state.copyWith(isChange: value);
  }
}

class SearchState {
  final String search;
  final bool isChange;
  SearchState( {required this.search,required this.isChange});

  SearchState copyWith({String? search,bool? isChange}) {
    return SearchState(search: search ?? this.search, 
    isChange: isChange ?? this.isChange);
  }
}
