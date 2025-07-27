import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/view/model/item.dart';
import 'package:todo_app/view/provider/favourite_states.dart';

final favouriteProvider =
    StateNotifierProvider<FavouriteNotifier, FavouriteStates>((ref) {
      return FavouriteNotifier();
    });

class FavouriteNotifier extends StateNotifier<FavouriteStates> {
  FavouriteNotifier()
    : super(FavouriteStates(allItems: [], filteredItems: [], search: ''));

  void addItem() {
    final List<Item> items = [
      Item(true, id: '1', name: 'Apple'),
      Item(true, id: '2', name: 'Banana'),
      Item(true, id: '3', name: 'Orange'),
      Item(false, id: '4', name: 'Grapes'),
      Item(true, id: '5', name: 'Mango'),
      Item(false, id: '6', name: 'Pineapple'),
      Item(true, id: '7', name: 'Strawberry'),
      Item(false, id: '8', name: 'Watermelon'),
      Item(true, id: '9', name: 'Blueberry'),
      Item(false, id: '10', name: 'Kiwi'),
    ];
    state = state.copyWith(
      allItems: items.toList(),
      filteredItems: items.toList(),
    );
  }

  void filterList(String search) {
    state = state.copyWith(filteredItems: _filterItems(state.allItems, search));
  }

  List<Item> _filterItems(List<Item> items, String search) {
    if (search.isEmpty) {
      return items;
    }

    return items
        .where((item) => item.name.toLowerCase().contains(search.toLowerCase()))
        .toList();
  }
}
