import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/view/provider/favourite_provider.dart';
import 'package:todo_app/view/provider/future_provider.dart';
import 'package:todo_app/view/provider/stream_provider.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  @override
  void initState() {
    // getIt.isReady<AppModel>().then((value) => getIt<AppModel>().addListener(Update));
    super.initState();
    Future.microtask(() {
      ref.read(favouriteProvider.notifier).addItem();
    });
  }

  @override
  Widget build(BuildContext context) {
    final item = ref.watch(favouriteProvider);
    final provider = ref.watch(futureProvider);
    return Scaffold(
      appBar: AppBar(title: Text("To Do app bar")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("Future Builder"),
            provider.when(
              skipLoadingOnRefresh: false,
              data: (data) => SizedBox(
                height: 200, // adjust height as needed
                child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(data[index].toString()),
                    );
                  },
                ),
              ),
              error: (error, stackTrace) => Text(error.toString()),
              loading: () => CircularProgressIndicator(),
            ),
            Text("Stream Builder"),
            Consumer(
              builder: (context, ref, child) {
                final streamProvider = ref.watch(stockPriceProvider);
                return streamProvider.when(
                  skipLoadingOnRefresh: false,
                  data: (price) => Text(
                    price.toStringAsFixed(2).toString(),
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  error: (error, stackTrace) => Text(error.toString()),
                  loading: () => CircularProgressIndicator(),
                );
              },
            ),
            /*TextField(
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
                                  */
            /* ref
                                      .read(itemProvider.notifier)
                                      .updateItem(items.id, "Update Item");*/
            /*
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
                  ),*/
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //ref.read(itemProvider.notifier).addItem("New Item ${DateTime.now()}");
          ref.invalidate(futureProvider); //refresh
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
