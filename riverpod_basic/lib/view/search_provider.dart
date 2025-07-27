import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchProvider = StateNotifierProvider<SearchNotifier, String>((ref) {
  return SearchNotifier('');
});

class SearchNotifier extends StateNotifier<String> {
  SearchNotifier(super.state);

  void search(String query) {
    state = query;
  }
}

class SearchState {
  final String search;

  SearchState({required this.search});

  SearchState copyWith({String? search}) {
    return SearchState(search: search ?? this.search);
  }
}
