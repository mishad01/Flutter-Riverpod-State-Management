import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counter = StateProvider<int>((ref) {
  return 0;
});

final switchProvider = StateProvider((ref) {
  return false;
});

class CounterAppView extends ConsumerStatefulWidget {
  const CounterAppView({super.key});

  @override
  ConsumerState<CounterAppView> createState() => _CounterAppViewState();
}

class _CounterAppViewState extends ConsumerState<CounterAppView> {
  @override
  Widget build(BuildContext context) {
    final count = ref.watch(counter);
    final switchTest = ref.watch(switchProvider);
    return Scaffold(
      appBar: AppBar(title: Text("Counter APP")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(count.toString(), style: TextStyle(fontSize: 20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  ref.read(counter.notifier).state++;
                },
                child: Text("Increment"),
              ),
              ElevatedButton(
                onPressed: () {
                  ref.read(counter.notifier).state--;
                },
                child: Text("Decrement"),
              ),
            ],
          ),
          Switch(
            value: switchTest,
            onChanged: (value) {
              print("object");
              ref.read(switchProvider.notifier).state = value;
            },
          ),
        ],
      ),
    );
  }
}
