import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/view/provider/favourite_provider.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(favouriteProvider.notifier).addItem();
    });
  }

  @override
  Widget build(BuildContext context) {
    final item = ref.watch(favouriteProvider);
    return Scaffold(
      appBar: AppBar(title: Text("To Do app bar")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
              onChanged: (value) {
                ref.read(favouriteProvider.notifier).filterList(value);
              },
            ),
            item.allItems.isEmpty
                ? Center(child: Text("No Data"))
                : Expanded(
                    child: ListView.builder(
                      itemCount: item.filteredItems.length,
                      itemBuilder: (context, index) {
                        final items = item.filteredItems[index];
                        return ListTile(
                          title: Text(items.name),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                onPressed: () {
                                  //ref.read(itemProvider.notifier).deleteItem(items.id);
                                },
                                icon: Icon(Icons.delete),
                              ),
                              IconButton(
                                onPressed: () {
                                  /* ref
                                      .read(itemProvider.notifier)
                                      .updateItem(items.id, "Update Item");*/
                                },
                                icon: items.favourite
                                    ? Icon(Icons.favorite, color: Colors.red)
                                    : Icon(Icons.favorite_border),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //ref.read(itemProvider.notifier).addItem("New Item ${DateTime.now()}");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
