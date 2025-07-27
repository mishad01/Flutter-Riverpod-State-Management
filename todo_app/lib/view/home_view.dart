import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/view/provider/item_provider.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  @override
  Widget build(BuildContext context) {
    final item = ref.watch(itemProvider);
    return Scaffold(
      appBar: AppBar(title: Text("To Do app bar")),
      body: item.isEmpty
          ? Center(child: Text("No Data"))
          : ListView.builder(
              itemCount: item.length,
              itemBuilder: (context, index) {
                final items = item[index];
                return ListTile(
                  title: Text(items.name),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          ref.read(itemProvider.notifier).deleteItem(items.id);
                        },
                        icon: Icon(Icons.delete),
                      ),
                      IconButton(
                        onPressed: () {
                          ref
                              .read(itemProvider.notifier)
                              .updateItem(items.id, "Update Item");
                        },
                        icon: Icon(Icons.edit),
                      ),
                    ],
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(itemProvider.notifier).addItem("New Item ${DateTime.now()}");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
