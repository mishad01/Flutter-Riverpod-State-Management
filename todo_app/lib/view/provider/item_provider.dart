import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/view/model/item.dart';

final itemProvider = StateNotifierProvider<ItemNotifier, List<Item>>((ref) {
  return ItemNotifier();
});

class ItemNotifier extends StateNotifier<List<Item>> {
  ItemNotifier() : super([]);

  void addItem(String name) {
    final item = Item(id: DateTime.now().toString(), name: name);
    state.add(item);
    state = state.toList();
  }

  void deleteItem(String id) {
    state.removeWhere((item) => item.id == id);
    state = state.toList();
  }

  void updateItem(String id, String name) {
    final foundIndex = state.indexWhere((item) => item.id == id);
    state[foundIndex].name = name;
    state = state.toList();
  }
}
